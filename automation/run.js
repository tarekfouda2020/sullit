#!/usr/bin/env node

/**
 * Suliit Automation Test Runner
 * Simple Node.js script to manage Appium automation testing
 */

const { spawn, exec } = require('child_process');
const fs = require('fs');
const path = require('path');

// Colors for console output
const colors = {
    reset: '\x1b[0m',
    bright: '\x1b[1m',
    red: '\x1b[31m',
    green: '\x1b[32m',
    yellow: '\x1b[33m',
    blue: '\x1b[34m',
    magenta: '\x1b[35m',
    cyan: '\x1b[36m'
};

function log(message, color = 'reset') {
    console.log(`${colors[color]}${message}${colors.reset}`);
}

function logSuccess(message) {
    log(`✅ ${message}`, 'green');
}

function logError(message) {
    log(`❌ ${message}`, 'red');
}

function logInfo(message) {
    log(`ℹ️  ${message}`, 'blue');
}

function logWarning(message) {
    log(`⚠️  ${message}`, 'yellow');
}

// Check if Appium server is running
function checkAppiumServer() {
    return new Promise((resolve) => {
        exec('curl -s http://127.0.0.1:4723/wd/hub/status', (error, stdout) => {
            if (error) {
                resolve(false);
            } else {
                try {
                    const status = JSON.parse(stdout);
                    resolve(status.value && status.value.ready);
                } catch (e) {
                    resolve(false);
                }
            }
        });
    });
}

// Run npm script
function runNpmScript(scriptName) {
    return new Promise((resolve, reject) => {
        const child = spawn('npm', ['run', scriptName], {
            stdio: 'inherit',
            shell: true
        });

        child.on('close', (code) => {
            if (code === 0) {
                resolve();
            } else {
                reject(new Error(`Script ${scriptName} failed with code ${code}`));
            }
        });
    });
}

// Reports submenu
function showReportsMenu() {
    return new Promise((resolve) => {
        const readline = require('readline');
        const rl = readline.createInterface({
            input: process.stdin,
            output: process.stdout
        });

        log('\n📊 Test Reports Menu', 'cyan');
        log('==================', 'cyan');
        log('1. Generate Android Report', 'bright');
        log('2. Generate iOS Report', 'bright');
        log('3. Serve Android Report', 'bright');
        log('4. Serve iOS Report', 'bright');
        log('5. Back to Main Menu', 'bright');

        rl.question('\nEnter your choice (1-5): ', async (answer) => {
            try {
                switch (answer.trim()) {
                    case '1':
                        logInfo('Generating Android report...');
                        await runNpmScript('report:android');
                        logSuccess('Android report generated');
                        break;
                    case '2':
                        logInfo('Generating iOS report...');
                        await runNpmScript('report:ios');
                        logSuccess('iOS report generated');
                        break;
                    case '3':
                        logInfo('Serving Android report...');
                        await runNpmScript('report:serve:android');
                        break;
                    case '4':
                        logInfo('Serving iOS report...');
                        await runNpmScript('report:serve:ios');
                        break;
                    case '5':
                        logInfo('Returning to main menu...');
                        break;
                    default:
                        logError('Invalid option');
                }
            } catch (error) {
                logError(`Error: ${error.message}`);
            }
            rl.close();
            resolve();
        });
    });
}

// Main menu
function showMenu() {
    log('\n🤖 Suliit Automation Test Runner', 'cyan');
    log('=====================================', 'cyan');
    log('1. Start Appium Server', 'bright');
    log('2. Stop Appium Server', 'bright');
    log('3. Check Appium Status', 'bright');
    log('4. Run Appium Doctor', 'bright');
    log('5. List Drivers', 'bright');
    log('6. Install Drivers', 'bright');
    log('7. Run Android Tests', 'bright');
    log('8. Run iOS Tests', 'bright');
    log('9. Run Both Platforms', 'bright');
    log('10. View Test Reports', 'bright');
    log('11. Clean Test Data', 'bright');
    log('12. Exit', 'bright');
    log('=====================================', 'cyan');
}

// Handle menu selection
async function handleSelection(choice) {
    try {
        switch (choice) {
            case '1':
                logInfo('Starting Appium server...');
                await runNpmScript('start');
                logSuccess('Appium server started');
                break;
                
            case '2':
                logInfo('Stopping Appium server...');
                await runNpmScript('stop');
                logSuccess('Appium server stopped');
                break;
                
            case '3':
                logInfo('Checking Appium server status...');
                const isRunning = await checkAppiumServer();
                if (isRunning) {
                    logSuccess('Appium server is running');
                } else {
                    logWarning('Appium server is not running');
                }
                break;
                
            case '4':
                logInfo('Running Appium Doctor...');
                await runNpmScript('appium:doctor');
                break;
                
            case '5':
                logInfo('Listing installed drivers...');
                await runNpmScript('drivers:list');
                break;
                
            case '6':
                logInfo('Installing drivers...');
                await runNpmScript('drivers:install');
                logSuccess('Drivers installation completed');
                break;
                
                case '7':
                logInfo('Running Android tests...');
                await runNpmScript('test:android');
                break;
                
            case '8':
                logInfo('Running iOS tests...');
                await runNpmScript('test:ios');
                break;
                
            case '9':
                logInfo('Running tests on both platforms...');
                await runNpmScript('test:both');
                break;
                
            case '10':
                logInfo('Test reports menu...');
                await showReportsMenu();
                break;
                
            case '11':
                logInfo('Cleaning test data...');
                await runNpmScript('clean:all');
                logSuccess('Test data cleaned');
                break;
                
            case '12':
                log('👋 Goodbye!', 'green');
                process.exit(0);
                break;
                
            default:
                logError('Invalid option. Please try again.');
        }
    } catch (error) {
        logError(`Error: ${error.message}`);
    }
}

// Main execution
async function main() {
    const readline = require('readline');
    const rl = readline.createInterface({
        input: process.stdin,
        output: process.stdout
    });

    // Handle command line arguments
    const args = process.argv.slice(2);
    if (args.length > 0) {
        const command = args[0];
        try {
            switch (command) {
                case 'start':
                    await handleSelection('1');
                    break;
                case 'stop':
                    await handleSelection('2');
                    break;
                case 'status':
                    await handleSelection('3');
                    break;
                case 'doctor':
                    await handleSelection('4');
                    break;
                case 'test:android':
                    await handleSelection('7');
                    break;
                case 'test:ios':
                    await handleSelection('8');
                    break;
                case 'test:both':
                    await handleSelection('9');
                    break;
                case 'test':
                    await handleSelection('9'); // Run both platforms by default
                    break;
                default:
                    log(`Unknown command: ${command}`, 'red');
                    log('Available commands: start, stop, status, doctor, test, test:android, test:ios, test:both', 'yellow');
            }
        } catch (error) {
            logError(error.message);
        }
        rl.close();
        return;
    }

    // Interactive menu
    function askQuestion() {
        showMenu();
        rl.question('\nEnter your choice (1-9): ', async (answer) => {
            await handleSelection(answer.trim());
            
            if (answer.trim() !== '9') {
                setTimeout(askQuestion, 1000); // Show menu again after 1 second
            } else {
                rl.close();
            }
        });
    }

    askQuestion();
}

// Handle process termination
process.on('SIGINT', () => {
    log('\n👋 Goodbye!', 'green');
    process.exit(0);
});

// Run the main function
main().catch(error => {
    logError(`Unexpected error: ${error.message}`);
    process.exit(1);
});
