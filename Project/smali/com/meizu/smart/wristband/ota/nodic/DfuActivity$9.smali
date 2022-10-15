.class Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$9;
.super Ljava/lang/Object;
.source "DfuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->updateProgressBar(IIIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$9;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 569
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$9;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->onUploadCanceled()V

    .line 573
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$9;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 574
    .local v0, "manager":Landroid/app/NotificationManager;
    const/16 v1, 0x11b

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 575
    return-void
.end method
