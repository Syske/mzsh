.class public final enum Ldolphin/tools/common/widget/NumberProgressBar$ProgressTextVisibility;
.super Ljava/lang/Enum;
.source "NumberProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldolphin/tools/common/widget/NumberProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProgressTextVisibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldolphin/tools/common/widget/NumberProgressBar$ProgressTextVisibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Ldolphin/tools/common/widget/NumberProgressBar$ProgressTextVisibility;

.field public static final enum Invisible:Ldolphin/tools/common/widget/NumberProgressBar$ProgressTextVisibility;

.field public static final enum Visible:Ldolphin/tools/common/widget/NumberProgressBar$ProgressTextVisibility;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    new-instance v0, Ldolphin/tools/common/widget/NumberProgressBar$ProgressTextVisibility;

    const-string v1, "Visible"

    invoke-direct {v0, v1, v2}, Ldolphin/tools/common/widget/NumberProgressBar$ProgressTextVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/tools/common/widget/NumberProgressBar$ProgressTextVisibility;->Visible:Ldolphin/tools/common/widget/NumberProgressBar$ProgressTextVisibility;

    new-instance v0, Ldolphin/tools/common/widget/NumberProgressBar$ProgressTextVisibility;

    const-string v1, "Invisible"

    invoke-direct {v0, v1, v3}, Ldolphin/tools/common/widget/NumberProgressBar$ProgressTextVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldolphin/tools/common/widget/NumberProgressBar$ProgressTextVisibility;->Invisible:Ldolphin/tools/common/widget/NumberProgressBar$ProgressTextVisibility;

    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [Ldolphin/tools/common/widget/NumberProgressBar$ProgressTextVisibility;

    sget-object v1, Ldolphin/tools/common/widget/NumberProgressBar$ProgressTextVisibility;->Visible:Ldolphin/tools/common/widget/NumberProgressBar$ProgressTextVisibility;

    aput-object v1, v0, v2

    sget-object v1, Ldolphin/tools/common/widget/NumberProgressBar$ProgressTextVisibility;->Invisible:Ldolphin/tools/common/widget/NumberProgressBar$ProgressTextVisibility;

    aput-object v1, v0, v3

    sput-object v0, Ldolphin/tools/common/widget/NumberProgressBar$ProgressTextVisibility;->ENUM$VALUES:[Ldolphin/tools/common/widget/NumberProgressBar$ProgressTextVisibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldolphin/tools/common/widget/NumberProgressBar$ProgressTextVisibility;
    .locals 1

    .prologue
    .line 1
    const-class v0, Ldolphin/tools/common/widget/NumberProgressBar$ProgressTextVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldolphin/tools/common/widget/NumberProgressBar$ProgressTextVisibility;

    return-object v0
.end method

.method public static values()[Ldolphin/tools/common/widget/NumberProgressBar$ProgressTextVisibility;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Ldolphin/tools/common/widget/NumberProgressBar$ProgressTextVisibility;->ENUM$VALUES:[Ldolphin/tools/common/widget/NumberProgressBar$ProgressTextVisibility;

    array-length v1, v0

    new-array v2, v1, [Ldolphin/tools/common/widget/NumberProgressBar$ProgressTextVisibility;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
