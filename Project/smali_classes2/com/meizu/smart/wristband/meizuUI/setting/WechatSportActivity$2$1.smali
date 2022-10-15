.class Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2$1;
.super Ljava/lang/Object;
.source "WechatSportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;)Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 164
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2$1;->this$1:Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2;

    iget-object v1, v1, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity$2;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/setting/WechatSportActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 165
    return-void
.end method
