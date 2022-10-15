.class Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$3;
.super Ljava/lang/Object;
.source "SportRecordActivity.java"

# interfaces
.implements Lcom/baidu/mapapi/map/BaiduMap$SnapshotReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->takeSnapshot3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$3;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$3;->lambda$onSnapshotReady$338()V

    return-void
.end method

.method private synthetic lambda$onSnapshotReady$338()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$500(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)V

    return-void
.end method


# virtual methods
.method public onSnapshotReady(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 397
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Lcom/baidu/mapapi/map/MapView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MapView;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->access$400(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$3$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$3;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 400
    return-void
.end method
