.class final synthetic Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$$Lambda$11;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Func1;


# instance fields
.field private final arg$1:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$$Lambda$11;->arg$1:I

    return-void
.end method

.method private static get$Lambda(I)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$$Lambda$11;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$$Lambda$11;-><init>(I)V

    return-object v0
.end method

.method public static lambdaFactory$(I)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$$Lambda$11;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$$Lambda$11;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$$Lambda$11;->arg$1:I

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->access$lambda$10(ILjava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
