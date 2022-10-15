.class Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$8;
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
    .line 547
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$8;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 550
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$8;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->access$800(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)V

    .line 554
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$8;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 555
    .local v0, "manager":Landroid/app/NotificationManager;
    const/16 v1, 0x11b

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 557
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$8;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->access$900(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 558
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$8;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->access$1000(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->setVisibility(I)V

    .line 559
    return-void
.end method
