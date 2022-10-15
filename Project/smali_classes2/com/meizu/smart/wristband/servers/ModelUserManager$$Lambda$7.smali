.class final synthetic Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Func1;


# instance fields
.field private final arg$1:Landroid/content/Context;

.field private final arg$2:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$7;->arg$1:Landroid/content/Context;

    iput-object p2, p0, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$7;->arg$2:Ljava/lang/String;

    return-void
.end method

.method private static get$Lambda(Landroid/content/Context;Ljava/lang/String;)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$7;

    invoke-direct {v0, p0, p1}, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$7;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static lambdaFactory$(Landroid/content/Context;Ljava/lang/String;)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$7;

    invoke-direct {v0, p0, p1}, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$7;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$7;->arg$1:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$7;->arg$2:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/meizu/smart/wristband/servers/ModelUserManager;->access$lambda$6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
