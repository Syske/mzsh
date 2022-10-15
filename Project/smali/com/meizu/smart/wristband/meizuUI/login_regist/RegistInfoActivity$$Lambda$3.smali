.class final synthetic Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Func1;


# instance fields
.field private final arg$1:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;


# direct methods
.method private constructor <init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$$Lambda$3;->arg$1:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    return-void
.end method

.method private static get$Lambda(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$$Lambda$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$$Lambda$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$$Lambda$3;->arg$1:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->access$lambda$2(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
