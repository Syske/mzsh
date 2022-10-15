.class Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$3;
.super Ljava/lang/Object;
.source "MyWheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->setSeletion(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

.field final synthetic val$p:I


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    iput p2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$3;->val$p:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 384
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$3;->val$p:I

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;

    iget v3, v3, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->itemHeight:I

    mul-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/userinfo/wheelView/MyWheelView;->scrollTo(II)V

    .line 385
    return-void
.end method
