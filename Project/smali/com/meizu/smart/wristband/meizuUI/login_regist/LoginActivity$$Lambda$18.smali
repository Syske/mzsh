.class final synthetic Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$$Lambda$18;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Func1;


# instance fields
.field private final arg$1:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

.field private final arg$2:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$$Lambda$18;->arg$1:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$$Lambda$18;->arg$2:Ljava/lang/String;

    return-void
.end method

.method private static get$Lambda(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;Ljava/lang/String;)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$$Lambda$18;

    invoke-direct {v0, p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$$Lambda$18;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;Ljava/lang/String;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;Ljava/lang/String;)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$$Lambda$18;

    invoke-direct {v0, p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$$Lambda$18;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$$Lambda$18;->arg$1:Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity$$Lambda$18;->arg$2:Ljava/lang/String;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;->access$lambda$17(Lcom/meizu/smart/wristband/meizuUI/login_regist/LoginActivity;Ljava/lang/String;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
