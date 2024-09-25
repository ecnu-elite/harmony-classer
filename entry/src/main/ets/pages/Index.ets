
import { router } from '@kit.ArkUI'
import {BusinessError} from '@kit.BasicServicesKit'


@Entry
@Component
struct Index {
  @State message: string = 'Hello World';



  build() {


    Column(){

      Flex({
        justifyContent: FlexAlign.SpaceBetween,
        alignItems: ItemAlign.Center
      }){

        // 图标
        Image($r('app.media.ic_contacts_business_cards'))
          .width(50)
          .height(50)
          .margin({
            left: 20
          })
          .onClick(() => {
            console.log('Image Clicked')
          })

        Text('Image')
          .fontSize(25)
          .fontWeight(FontWeight.Bold)
          .margin({
            right: 20
          })
          .onClick(() => {
            console.log('Text Clicked')
          })


      }
      .width('100%')
      .height(80)
      .backgroundColor('#00ff00')

      Row(){

      }
      .height('50%')
      .width('100%')
      .backgroundColor('#000000')


    }
    .height('100%')


  }
}