.class public final enum Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;
.super Ljava/lang/Enum;
.source "SleepState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/models/database/entity/SleepState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

.field public static final enum deep:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

.field public static final enum dream:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

.field public static final enum insleep:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

.field public static final enum shallow:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

.field public static final enum wake:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    const-string v1, "deep"

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->deep:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    const-string v1, "shallow"

    invoke-direct {v0, v1, v3}, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->shallow:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    const-string v1, "dream"

    invoke-direct {v0, v1, v4}, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->dream:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    const-string v1, "wake"

    invoke-direct {v0, v1, v5}, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->wake:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    const-string v1, "insleep"

    invoke-direct {v0, v1, v6}, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->insleep:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    .line 85
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->deep:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->shallow:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->dream:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->wake:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->insleep:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->$VALUES:[Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

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
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static code2State(Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;
    .locals 1
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    .line 89
    const-string v0, "3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->deep:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    .line 98
    :goto_0
    return-object v0

    .line 91
    :cond_0
    const-string v0, "2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    sget-object v0, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->shallow:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    goto :goto_0

    .line 93
    :cond_1
    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    sget-object v0, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->dream:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    goto :goto_0

    .line 95
    :cond_2
    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    sget-object v0, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->wake:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    goto :goto_0

    .line 98
    :cond_3
    sget-object v0, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->insleep:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    goto :goto_0
.end method

.method public static state2Code(Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    .prologue
    .line 102
    sget-object v0, Lcom/meizu/smart/wristband/models/database/entity/SleepState$1;->$SwitchMap$com$meizu$smart$wristband$models$database$entity$SleepState$State:[I

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 113
    const-string v0, "4"

    :goto_0
    return-object v0

    .line 104
    :pswitch_0
    const-string v0, "3"

    goto :goto_0

    .line 106
    :pswitch_1
    const-string v0, "2"

    goto :goto_0

    .line 108
    :pswitch_2
    const-string v0, "1"

    goto :goto_0

    .line 110
    :pswitch_3
    const-string v0, "0"

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    const-class v0, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    return-object v0
.end method

.method public static values()[Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->$VALUES:[Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    invoke-virtual {v0}, [Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    return-object v0
.end method
