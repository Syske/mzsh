.class public final enum Ldolphin/tools/ble/InstructionType;
.super Ljava/lang/Enum;
.source "InstructionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldolphin/tools/ble/InstructionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Ldolphin/tools/ble/InstructionType;

.field public static final enum characteristicNotify:Ldolphin/tools/ble/InstructionType;

.field public static final enum characteristicRead:Ldolphin/tools/ble/InstructionType;

.field public static final enum characteristicWrite:Ldolphin/tools/ble/InstructionType;

.field public static final enum descriptorRead:Ldolphin/tools/ble/InstructionType;

.field public static final enum descriptorWrite:Ldolphin/tools/ble/InstructionType;

.field public static final enum readRemoteRssi:Ldolphin/tools/ble/InstructionType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Ldolphin/tools/ble/InstructionType;

    const-string v1, "characteristicRead"

    invoke-direct {v0, v1, v3}, Ldolphin/tools/ble/InstructionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/tools/ble/InstructionType;->characteristicRead:Ldolphin/tools/ble/InstructionType;

    new-instance v0, Ldolphin/tools/ble/InstructionType;

    const-string v1, "characteristicWrite"

    invoke-direct {v0, v1, v4}, Ldolphin/tools/ble/InstructionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/tools/ble/InstructionType;->characteristicWrite:Ldolphin/tools/ble/InstructionType;

    new-instance v0, Ldolphin/tools/ble/InstructionType;

    const-string v1, "characteristicNotify"

    invoke-direct {v0, v1, v5}, Ldolphin/tools/ble/InstructionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/tools/ble/InstructionType;->characteristicNotify:Ldolphin/tools/ble/InstructionType;

    .line 6
    new-instance v0, Ldolphin/tools/ble/InstructionType;

    const-string v1, "descriptorRead"

    invoke-direct {v0, v1, v6}, Ldolphin/tools/ble/InstructionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/tools/ble/InstructionType;->descriptorRead:Ldolphin/tools/ble/InstructionType;

    new-instance v0, Ldolphin/tools/ble/InstructionType;

    const-string v1, "descriptorWrite"

    invoke-direct {v0, v1, v7}, Ldolphin/tools/ble/InstructionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/tools/ble/InstructionType;->descriptorWrite:Ldolphin/tools/ble/InstructionType;

    new-instance v0, Ldolphin/tools/ble/InstructionType;

    const-string v1, "readRemoteRssi"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ldolphin/tools/ble/InstructionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/tools/ble/InstructionType;->readRemoteRssi:Ldolphin/tools/ble/InstructionType;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Ldolphin/tools/ble/InstructionType;

    sget-object v1, Ldolphin/tools/ble/InstructionType;->characteristicRead:Ldolphin/tools/ble/InstructionType;

    aput-object v1, v0, v3

    sget-object v1, Ldolphin/tools/ble/InstructionType;->characteristicWrite:Ldolphin/tools/ble/InstructionType;

    aput-object v1, v0, v4

    sget-object v1, Ldolphin/tools/ble/InstructionType;->characteristicNotify:Ldolphin/tools/ble/InstructionType;

    aput-object v1, v0, v5

    sget-object v1, Ldolphin/tools/ble/InstructionType;->descriptorRead:Ldolphin/tools/ble/InstructionType;

    aput-object v1, v0, v6

    sget-object v1, Ldolphin/tools/ble/InstructionType;->descriptorWrite:Ldolphin/tools/ble/InstructionType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ldolphin/tools/ble/InstructionType;->readRemoteRssi:Ldolphin/tools/ble/InstructionType;

    aput-object v2, v0, v1

    sput-object v0, Ldolphin/tools/ble/InstructionType;->ENUM$VALUES:[Ldolphin/tools/ble/InstructionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldolphin/tools/ble/InstructionType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Ldolphin/tools/ble/InstructionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldolphin/tools/ble/InstructionType;

    return-object v0
.end method

.method public static values()[Ldolphin/tools/ble/InstructionType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Ldolphin/tools/ble/InstructionType;->ENUM$VALUES:[Ldolphin/tools/ble/InstructionType;

    array-length v1, v0

    new-array v2, v1, [Ldolphin/tools/ble/InstructionType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
