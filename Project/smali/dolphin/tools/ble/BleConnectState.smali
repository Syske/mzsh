.class public final enum Ldolphin/tools/ble/BleConnectState;
.super Ljava/lang/Enum;
.source "BleConnectState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldolphin/tools/ble/BleConnectState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONNECTED:Ldolphin/tools/ble/BleConnectState;

.field public static final enum CONNECTING:Ldolphin/tools/ble/BleConnectState;

.field public static final enum DISCONNECTED:Ldolphin/tools/ble/BleConnectState;

.field private static final synthetic ENUM$VALUES:[Ldolphin/tools/ble/BleConnectState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Ldolphin/tools/ble/BleConnectState;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v2}, Ldolphin/tools/ble/BleConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/tools/ble/BleConnectState;->DISCONNECTED:Ldolphin/tools/ble/BleConnectState;

    new-instance v0, Ldolphin/tools/ble/BleConnectState;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Ldolphin/tools/ble/BleConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/tools/ble/BleConnectState;->CONNECTING:Ldolphin/tools/ble/BleConnectState;

    new-instance v0, Ldolphin/tools/ble/BleConnectState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v4}, Ldolphin/tools/ble/BleConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/tools/ble/BleConnectState;->CONNECTED:Ldolphin/tools/ble/BleConnectState;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Ldolphin/tools/ble/BleConnectState;

    sget-object v1, Ldolphin/tools/ble/BleConnectState;->DISCONNECTED:Ldolphin/tools/ble/BleConnectState;

    aput-object v1, v0, v2

    sget-object v1, Ldolphin/tools/ble/BleConnectState;->CONNECTING:Ldolphin/tools/ble/BleConnectState;

    aput-object v1, v0, v3

    sget-object v1, Ldolphin/tools/ble/BleConnectState;->CONNECTED:Ldolphin/tools/ble/BleConnectState;

    aput-object v1, v0, v4

    sput-object v0, Ldolphin/tools/ble/BleConnectState;->ENUM$VALUES:[Ldolphin/tools/ble/BleConnectState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldolphin/tools/ble/BleConnectState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Ldolphin/tools/ble/BleConnectState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldolphin/tools/ble/BleConnectState;

    return-object v0
.end method

.method public static values()[Ldolphin/tools/ble/BleConnectState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Ldolphin/tools/ble/BleConnectState;->ENUM$VALUES:[Ldolphin/tools/ble/BleConnectState;

    array-length v1, v0

    new-array v2, v1, [Ldolphin/tools/ble/BleConnectState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
