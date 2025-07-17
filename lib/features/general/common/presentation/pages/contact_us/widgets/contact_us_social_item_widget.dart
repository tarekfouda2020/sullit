part of 'contact_us_widgets_imports.dart';

class ContactUsSocialItemWidget extends StatelessWidget {
  final String imagePath;
  final void Function()? onTap;
  final bool isSvg;
  final bool applyCashedImage;
  final ContactUsSocialModel model;
  const ContactUsSocialItemWidget({
    super.key,
    required this.imagePath,
     this.onTap,
    this.isSvg = true,
    this.applyCashedImage = false,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () => HelperMethods.instance.launchURL(url: model.url),
      child: _buildImage() ,
    );
  }


  Widget _buildImage(){
    if(applyCashedImage){
      return CachedImage(
        url: model.image,
        width: 40,
        height: 40,
      );
    }else{
      return isSvg
          ? SvgPicture.asset(
        imagePath,
        width: 37,
        height: 37,
      )
          : Image.asset(
        imagePath,
        width: 40,
        height: 40,
      ) ;
    }
  }


}
