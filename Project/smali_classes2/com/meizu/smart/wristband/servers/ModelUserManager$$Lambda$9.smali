.class final synthetic Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$9;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Func1;


# instance fields
.field private final arg$1:Landroid/content/Context;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$9;->arg$1:Landroid/content/Context;

    iput-object p2, p0, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$9;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$9;->arg$3:Ljava/lang/String;

    return-void
.end method

.method private static get$Lambda(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$9;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static lambdaFactory$(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$9;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$9;->arg$1:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$9;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$9;->arg$3:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/meizu/smart/wristband/servers/ModelUserManager;->access$lambda$8(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
