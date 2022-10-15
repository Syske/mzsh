.class final synthetic Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Action1;


# instance fields
.field private final arg$1:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;


# direct methods
.method private constructor <init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$$Lambda$5;->arg$1:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    return-void
.end method

.method private static get$Lambda(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)Lrx/functions/Action1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$$Lambda$5;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$$Lambda$5;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)Lrx/functions/Action1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$$Lambda$5;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$$Lambda$5;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity$$Lambda$5;->arg$1:Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;->access$lambda$4(Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;Ljava/lang/Throwable;)V

    return-void
.end method
