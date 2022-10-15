.class Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->syncDeviceInfo(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    .prologue
    .line 855
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$7;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 855
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$7;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 859
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$7;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->updateProgressState(I)V

    .line 860
    return-void
.end method
