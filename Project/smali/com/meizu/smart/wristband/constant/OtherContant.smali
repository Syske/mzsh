.class public Lcom/meizu/smart/wristband/constant/OtherContant;
.super Ljava/lang/Object;
.source "OtherContant.java"


# static fields
.field public static final SYNC_TIME:Ljava/lang/String; = "SYNC_TIME"

.field public static final broadcast_action_BluetoothAdapter_off:Ljava/lang/String; = "broadcast_action_bluetoothAdapter_off"

.field public static final broadcast_connect_manutal:Ljava/lang/String; = "broadcast_connect_manutal"

.field public static final broadcast_notify_connect_state:Ljava/lang/String; = "broadcast_notify_connect_state"

.field public static final broadcast_notify_data:Ljava/lang/String; = "broadcast_notify_connect_state_data"

.field public static final broadcast_notify_message:Ljava/lang/String; = "broadcast_notify_message"

.field public static final broadcast_notify_message_data:Ljava/lang/String; = "broadcast_notify_message_data"

.field public static final broadcast_sync_progress:Ljava/lang/String; = "broadcast_sync_progress"

.field public static final datatype_sleep_autosleep:Ljava/lang/Integer;

.field public static final datatype_sleep_heartrete:Ljava/lang/Integer;

.field public static final datatype_sleep_motion:Ljava/lang/Integer;

.field public static final datatype_sleep_sportmode:Ljava/lang/Integer;

.field public static final datatype_sport:Ljava/lang/Integer;

.field public static final datatype_sport_real:Ljava/lang/Integer;

.field public static final default_timeout:Ljava/lang/Integer;

.field public static final handler_cmd_connect:Ljava/lang/Integer;

.field public static final handler_cmd_progress:Ljava/lang/Integer;

.field public static final handler_cmd_refrush:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/constant/OtherContant;->handler_cmd_progress:Ljava/lang/Integer;

    .line 8
    const/16 v0, 0x3e9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/constant/OtherContant;->handler_cmd_connect:Ljava/lang/Integer;

    .line 9
    const/16 v0, 0x3ea

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/constant/OtherContant;->handler_cmd_refrush:Ljava/lang/Integer;

    .line 11
    const/16 v0, 0x4e20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/constant/OtherContant;->default_timeout:Ljava/lang/Integer;

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/constant/OtherContant;->datatype_sport:Ljava/lang/Integer;

    .line 22
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/constant/OtherContant;->datatype_sport_real:Ljava/lang/Integer;

    .line 23
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/constant/OtherContant;->datatype_sleep_motion:Ljava/lang/Integer;

    .line 24
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/constant/OtherContant;->datatype_sleep_heartrete:Ljava/lang/Integer;

    .line 25
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/constant/OtherContant;->datatype_sleep_sportmode:Ljava/lang/Integer;

    .line 26
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/constant/OtherContant;->datatype_sleep_autosleep:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
