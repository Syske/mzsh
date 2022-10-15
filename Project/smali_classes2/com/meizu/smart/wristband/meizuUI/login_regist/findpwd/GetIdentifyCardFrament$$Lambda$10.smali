.class final synthetic Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$$Lambda$10;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Action1;


# instance fields
.field private final arg$1:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;

.field private final arg$2:I


# direct methods
.method private constructor <init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$$Lambda$10;->arg$1:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;

    iput p2, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$$Lambda$10;->arg$2:I

    return-void
.end method

.method private static get$Lambda(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;I)Lrx/functions/Action1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$$Lambda$10;

    invoke-direct {v0, p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$$Lambda$10;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;I)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;I)Lrx/functions/Action1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$$Lambda$10;

    invoke-direct {v0, p0, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$$Lambda$10;-><init>(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;I)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$$Lambda$10;->arg$1:Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament$$Lambda$10;->arg$2:I

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, p1}, Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;->access$lambda$9(Lcom/meizu/smart/wristband/meizuUI/login_regist/findpwd/GetIdentifyCardFrament;ILjava/lang/Long;)V

    return-void
.end method
