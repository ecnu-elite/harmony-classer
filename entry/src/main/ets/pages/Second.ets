// Second.ets
import { router } from '@kit.ArkUI'

@Entry
@Component
struct Second {
  @State message: string = 'Hi there'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button() {
          Text('Back')
            .fontSize(25)
            .fontWeight(FontWeight.Bold)
        }
        .type(ButtonType.Capsule)
        .margin({
          top: 20
        })
        .backgroundColor('#0D9FFB')
        .width('40%')
        .height('5%')
        .onClick(() => {
          console.log('Back Button Clicked')
          try {
            router.back()
            console.log('Back Success')
          } catch (error) {
            console.log('Back Failed')
            console.log(error)
          }
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}
