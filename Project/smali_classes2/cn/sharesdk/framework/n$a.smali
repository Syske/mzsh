.class final enum Lcn/sharesdk/framework/n$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/framework/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/sharesdk/framework/n$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/sharesdk/framework/n$a;

.field public static final enum b:Lcn/sharesdk/framework/n$a;

.field public static final enum c:Lcn/sharesdk/framework/n$a;

.field private static final synthetic d:[Lcn/sharesdk/framework/n$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/sharesdk/framework/n$a;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/framework/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/n$a;->a:Lcn/sharesdk/framework/n$a;

    new-instance v0, Lcn/sharesdk/framework/n$a;

    const-string v1, "INITIALIZING"

    invoke-direct {v0, v1, v3}, Lcn/sharesdk/framework/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/n$a;->b:Lcn/sharesdk/framework/n$a;

    new-instance v0, Lcn/sharesdk/framework/n$a;

    const-string v1, "READY"

    invoke-direct {v0, v1, v4}, Lcn/sharesdk/framework/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/n$a;->c:Lcn/sharesdk/framework/n$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/sharesdk/framework/n$a;

    sget-object v1, Lcn/sharesdk/framework/n$a;->a:Lcn/sharesdk/framework/n$a;

    aput-object v1, v0, v2

    sget-object v1, Lcn/sharesdk/framework/n$a;->b:Lcn/sharesdk/framework/n$a;

    aput-object v1, v0, v3

    sget-object v1, Lcn/sharesdk/framework/n$a;->c:Lcn/sharesdk/framework/n$a;

    aput-object v1, v0, v4

    sput-object v0, Lcn/sharesdk/framework/n$a;->d:[Lcn/sharesdk/framework/n$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/sharesdk/framework/n$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcn/sharesdk/framework/n$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/n$a;

    return-object v0
.end method

.method public static values()[Lcn/sharesdk/framework/n$a;
    .locals 1

    sget-object v0, Lcn/sharesdk/framework/n$a;->d:[Lcn/sharesdk/framework/n$a;

    invoke-virtual {v0}, [Lcn/sharesdk/framework/n$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/sharesdk/framework/n$a;

    return-object v0
.end method
