.class public final enum Lcom/trello/rxlifecycle/FragmentEvent;
.super Ljava/lang/Enum;
.source "FragmentEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/trello/rxlifecycle/FragmentEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/trello/rxlifecycle/FragmentEvent;

.field public static final enum ATTACH:Lcom/trello/rxlifecycle/FragmentEvent;

.field public static final enum CREATE:Lcom/trello/rxlifecycle/FragmentEvent;

.field public static final enum CREATE_VIEW:Lcom/trello/rxlifecycle/FragmentEvent;

.field public static final enum DESTROY:Lcom/trello/rxlifecycle/FragmentEvent;

.field public static final enum DESTROY_VIEW:Lcom/trello/rxlifecycle/FragmentEvent;

.field public static final enum DETACH:Lcom/trello/rxlifecycle/FragmentEvent;

.field public static final enum PAUSE:Lcom/trello/rxlifecycle/FragmentEvent;

.field public static final enum RESUME:Lcom/trello/rxlifecycle/FragmentEvent;

.field public static final enum START:Lcom/trello/rxlifecycle/FragmentEvent;

.field public static final enum STOP:Lcom/trello/rxlifecycle/FragmentEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/trello/rxlifecycle/FragmentEvent;

    const-string v1, "ATTACH"

    invoke-direct {v0, v1, v3}, Lcom/trello/rxlifecycle/FragmentEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle/FragmentEvent;->ATTACH:Lcom/trello/rxlifecycle/FragmentEvent;

    .line 23
    new-instance v0, Lcom/trello/rxlifecycle/FragmentEvent;

    const-string v1, "CREATE"

    invoke-direct {v0, v1, v4}, Lcom/trello/rxlifecycle/FragmentEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle/FragmentEvent;->CREATE:Lcom/trello/rxlifecycle/FragmentEvent;

    .line 24
    new-instance v0, Lcom/trello/rxlifecycle/FragmentEvent;

    const-string v1, "CREATE_VIEW"

    invoke-direct {v0, v1, v5}, Lcom/trello/rxlifecycle/FragmentEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle/FragmentEvent;->CREATE_VIEW:Lcom/trello/rxlifecycle/FragmentEvent;

    .line 25
    new-instance v0, Lcom/trello/rxlifecycle/FragmentEvent;

    const-string v1, "START"

    invoke-direct {v0, v1, v6}, Lcom/trello/rxlifecycle/FragmentEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle/FragmentEvent;->START:Lcom/trello/rxlifecycle/FragmentEvent;

    .line 26
    new-instance v0, Lcom/trello/rxlifecycle/FragmentEvent;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v7}, Lcom/trello/rxlifecycle/FragmentEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle/FragmentEvent;->RESUME:Lcom/trello/rxlifecycle/FragmentEvent;

    .line 27
    new-instance v0, Lcom/trello/rxlifecycle/FragmentEvent;

    const-string v1, "PAUSE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/trello/rxlifecycle/FragmentEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle/FragmentEvent;->PAUSE:Lcom/trello/rxlifecycle/FragmentEvent;

    .line 28
    new-instance v0, Lcom/trello/rxlifecycle/FragmentEvent;

    const-string v1, "STOP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/trello/rxlifecycle/FragmentEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle/FragmentEvent;->STOP:Lcom/trello/rxlifecycle/FragmentEvent;

    .line 29
    new-instance v0, Lcom/trello/rxlifecycle/FragmentEvent;

    const-string v1, "DESTROY_VIEW"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/trello/rxlifecycle/FragmentEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle/FragmentEvent;->DESTROY_VIEW:Lcom/trello/rxlifecycle/FragmentEvent;

    .line 30
    new-instance v0, Lcom/trello/rxlifecycle/FragmentEvent;

    const-string v1, "DESTROY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/trello/rxlifecycle/FragmentEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle/FragmentEvent;->DESTROY:Lcom/trello/rxlifecycle/FragmentEvent;

    .line 31
    new-instance v0, Lcom/trello/rxlifecycle/FragmentEvent;

    const-string v1, "DETACH"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/trello/rxlifecycle/FragmentEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle/FragmentEvent;->DETACH:Lcom/trello/rxlifecycle/FragmentEvent;

    .line 20
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/trello/rxlifecycle/FragmentEvent;

    sget-object v1, Lcom/trello/rxlifecycle/FragmentEvent;->ATTACH:Lcom/trello/rxlifecycle/FragmentEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/trello/rxlifecycle/FragmentEvent;->CREATE:Lcom/trello/rxlifecycle/FragmentEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/trello/rxlifecycle/FragmentEvent;->CREATE_VIEW:Lcom/trello/rxlifecycle/FragmentEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/trello/rxlifecycle/FragmentEvent;->START:Lcom/trello/rxlifecycle/FragmentEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/trello/rxlifecycle/FragmentEvent;->RESUME:Lcom/trello/rxlifecycle/FragmentEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/trello/rxlifecycle/FragmentEvent;->PAUSE:Lcom/trello/rxlifecycle/FragmentEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/trello/rxlifecycle/FragmentEvent;->STOP:Lcom/trello/rxlifecycle/FragmentEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/trello/rxlifecycle/FragmentEvent;->DESTROY_VIEW:Lcom/trello/rxlifecycle/FragmentEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/trello/rxlifecycle/FragmentEvent;->DESTROY:Lcom/trello/rxlifecycle/FragmentEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/trello/rxlifecycle/FragmentEvent;->DETACH:Lcom/trello/rxlifecycle/FragmentEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/trello/rxlifecycle/FragmentEvent;->$VALUES:[Lcom/trello/rxlifecycle/FragmentEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/trello/rxlifecycle/FragmentEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/trello/rxlifecycle/FragmentEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/trello/rxlifecycle/FragmentEvent;

    return-object v0
.end method

.method public static values()[Lcom/trello/rxlifecycle/FragmentEvent;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/trello/rxlifecycle/FragmentEvent;->$VALUES:[Lcom/trello/rxlifecycle/FragmentEvent;

    invoke-virtual {v0}, [Lcom/trello/rxlifecycle/FragmentEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/trello/rxlifecycle/FragmentEvent;

    return-object v0
.end method
