.class Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB$1;
.super Ljava/lang/Object;
.source "BootloaderScannerJB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;->searchFor(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB$1;->this$0:Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB$1;->this$0:Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;

    invoke-static {v0}, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;->access$000(Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    :goto_1
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB$1;->this$0:Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;->access$102(Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB$1;->this$0:Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;->access$002(Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;Z)Z

    .line 67
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB$1;->this$0:Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;

    invoke-static {v0}, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;->access$200(Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 68
    :try_start_1
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB$1;->this$0:Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;

    invoke-static {v0}, Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;->access$200(Lcom/meizu/smart/wristband/ota/nodic/scanner/BootloaderScannerJB;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 69
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 56
    :catch_0
    move-exception v0

    goto :goto_0
.end method
