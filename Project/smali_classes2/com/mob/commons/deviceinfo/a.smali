.class Lcom/mob/commons/deviceinfo/a;
.super Lcom/mob/tools/MobHandlerThread;


# instance fields
.field final synthetic a:Lcom/mob/commons/deviceinfo/DeviceInfoCollector;


# direct methods
.method constructor <init>(Lcom/mob/commons/deviceinfo/DeviceInfoCollector;)V
    .locals 0

    iput-object p1, p0, Lcom/mob/commons/deviceinfo/a;->a:Lcom/mob/commons/deviceinfo/DeviceInfoCollector;

    invoke-direct {p0}, Lcom/mob/tools/MobHandlerThread;-><init>()V

    return-void
.end method

.method private a()V
    .locals 0

    invoke-super {p0}, Lcom/mob/tools/MobHandlerThread;->run()V

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/deviceinfo/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/mob/commons/deviceinfo/a;->a()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mob/commons/deviceinfo/a;->a:Lcom/mob/commons/deviceinfo/DeviceInfoCollector;

    invoke-static {v1}, Lcom/mob/commons/deviceinfo/DeviceInfoCollector;->a(Lcom/mob/commons/deviceinfo/DeviceInfoCollector;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/R;->getCacheRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "comm/locks/.dic_lock"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/mob/commons/deviceinfo/b;

    invoke-direct {v1, p0}, Lcom/mob/commons/deviceinfo/b;-><init>(Lcom/mob/commons/deviceinfo/a;)V

    invoke-static {v0, v1}, Lcom/mob/commons/j;->a(Ljava/io/File;Ljava/lang/Runnable;)V

    return-void
.end method
