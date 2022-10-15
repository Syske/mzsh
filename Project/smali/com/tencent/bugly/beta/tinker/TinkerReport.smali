.class public Lcom/tencent/bugly/beta/tinker/TinkerReport;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;
    }
.end annotation


# static fields
.field public static final KEY_APPLIED:I = 0x5

.field public static final KEY_APPLIED_DEXOPT:I = 0x79

.field public static final KEY_APPLIED_DEX_ART_EXTRACT:I = 0xb7

.field public static final KEY_APPLIED_DEX_EXTRACT:I = 0xb6

.field public static final KEY_APPLIED_EXCEPTION:I = 0x78

.field public static final KEY_APPLIED_FAIL_COST_10S_LESS:I = 0xce

.field public static final KEY_APPLIED_FAIL_COST_30S_LESS:I = 0xcf

.field public static final KEY_APPLIED_FAIL_COST_5S_LESS:I = 0xcd

.field public static final KEY_APPLIED_FAIL_COST_60S_LESS:I = 0xd0

.field public static final KEY_APPLIED_FAIL_COST_OTHER:I = 0xd1

.field public static final KEY_APPLIED_INFO_CORRUPTED:I = 0x7a

.field public static final KEY_APPLIED_LIB_EXTRACT:I = 0xb8

.field public static final KEY_APPLIED_PACKAGE_CHECK_APK_TINKER_ID_NOT_FOUND:I = 0x99

.field public static final KEY_APPLIED_PACKAGE_CHECK_DEX_META:I = 0x97

.field public static final KEY_APPLIED_PACKAGE_CHECK_LIB_META:I = 0x98

.field public static final KEY_APPLIED_PACKAGE_CHECK_META_NOT_FOUND:I = 0x9b

.field public static final KEY_APPLIED_PACKAGE_CHECK_PATCH_TINKER_ID_NOT_FOUND:I = 0x9a

.field public static final KEY_APPLIED_PACKAGE_CHECK_RES_META:I = 0x9d

.field public static final KEY_APPLIED_PACKAGE_CHECK_SIGNATURE:I = 0x96

.field public static final KEY_APPLIED_PACKAGE_CHECK_TINKERFLAG_NOT_SUPPORT:I = 0x9e

.field public static final KEY_APPLIED_PACKAGE_CHECK_TINKER_ID_NOT_EQUAL:I = 0x9c

.field public static final KEY_APPLIED_PATCH_FILE_EXTRACT:I = 0xb5

.field public static final KEY_APPLIED_REPAIR:I = 0x64

.field public static final KEY_APPLIED_REPAIR_FAIL:I = 0x66

.field public static final KEY_APPLIED_RESOURCE_EXTRACT:I = 0xb9

.field public static final KEY_APPLIED_START:I = 0x4

.field public static final KEY_APPLIED_SUCC_COST_10S_LESS:I = 0xc9

.field public static final KEY_APPLIED_SUCC_COST_30S_LESS:I = 0xca

.field public static final KEY_APPLIED_SUCC_COST_5S_LESS:I = 0xc8

.field public static final KEY_APPLIED_SUCC_COST_60S_LESS:I = 0xcb

.field public static final KEY_APPLIED_SUCC_COST_OTHER:I = 0xcc

.field public static final KEY_APPLIED_UPGRADE:I = 0x65

.field public static final KEY_APPLIED_UPGRADE_FAIL:I = 0x67

.field public static final KEY_APPLIED_VERSION_CHECK:I = 0xb4

.field public static final KEY_APPLY_WITH_RETRY:I = 0xa

.field public static final KEY_CRASH_CAUSE_XPOSED_ART:I = 0x9

.field public static final KEY_CRASH_CAUSE_XPOSED_DALVIK:I = 0x8

.field public static final KEY_CRASH_FAST_PROTECT:I = 0x7

.field public static final KEY_DOWNLOAD:I = 0x1

.field public static final KEY_LOADED:I = 0x6

.field public static final KEY_LOADED_EXCEPTION_DEX:I = 0xfc

.field public static final KEY_LOADED_EXCEPTION_DEX_CHECK:I = 0xfd

.field public static final KEY_LOADED_EXCEPTION_RESOURCE:I = 0xfe

.field public static final KEY_LOADED_EXCEPTION_RESOURCE_CEHCK:I = 0xff

.field public static final KEY_LOADED_INFO_CORRUPTED:I = 0x135

.field public static final KEY_LOADED_MISMATCH_DEX:I = 0x12c

.field public static final KEY_LOADED_MISMATCH_LIB:I = 0x12d

.field public static final KEY_LOADED_MISMATCH_RESOURCE:I = 0x12e

.field public static final KEY_LOADED_MISSING_DEX:I = 0x12f

.field public static final KEY_LOADED_MISSING_DEX_OPT:I = 0x133

.field public static final KEY_LOADED_MISSING_LIB:I = 0x130

.field public static final KEY_LOADED_MISSING_PATCH_FILE:I = 0x131

.field public static final KEY_LOADED_MISSING_PATCH_INFO:I = 0x132

.field public static final KEY_LOADED_MISSING_RES:I = 0x134

.field public static final KEY_LOADED_PACKAGE_CHECK_APK_TINKER_ID_NOT_FOUND:I = 0x161

.field public static final KEY_LOADED_PACKAGE_CHECK_DEX_META:I = 0x15f

.field public static final KEY_LOADED_PACKAGE_CHECK_LIB_META:I = 0x160

.field public static final KEY_LOADED_PACKAGE_CHECK_PACKAGE_META_NOT_FOUND:I = 0x164

.field public static final KEY_LOADED_PACKAGE_CHECK_PATCH_TINKER_ID_NOT_FOUND:I = 0x162

.field public static final KEY_LOADED_PACKAGE_CHECK_RES_META:I = 0x165

.field public static final KEY_LOADED_PACKAGE_CHECK_SIGNATURE:I = 0x15e

.field public static final KEY_LOADED_PACKAGE_CHECK_TINKERFLAG_NOT_SUPPORT:I = 0x166

.field public static final KEY_LOADED_PACKAGE_CHECK_TINKER_ID_NOT_EQUAL:I = 0x163

.field public static final KEY_LOADED_SUCC_COST_1000_LESS:I = 0x191

.field public static final KEY_LOADED_SUCC_COST_3000_LESS:I = 0x192

.field public static final KEY_LOADED_SUCC_COST_5000_LESS:I = 0x193

.field public static final KEY_LOADED_SUCC_COST_500_LESS:I = 0x190

.field public static final KEY_LOADED_SUCC_COST_OTHER:I = 0x194

.field public static final KEY_LOADED_UNCAUGHT_EXCEPTION:I = 0xfb

.field public static final KEY_LOADED_UNKNOWN_EXCEPTION:I = 0xfa

.field public static final KEY_REQUEST:I = 0x0

.field public static final KEY_TRY_APPLY:I = 0x2

.field public static final KEY_TRY_APPLY_ALREADY_APPLY:I = 0x4e

.field public static final KEY_TRY_APPLY_CONDITION_NOT_SATISFIED:I = 0x51

.field public static final KEY_TRY_APPLY_CRASH_LIMIT:I = 0x50

.field public static final KEY_TRY_APPLY_DISABLE:I = 0x48

.field public static final KEY_TRY_APPLY_GOOGLEPLAY:I = 0x4c

.field public static final KEY_TRY_APPLY_INSERVICE:I = 0x4a

.field public static final KEY_TRY_APPLY_MEMORY_LIMIT:I = 0x4f

.field public static final KEY_TRY_APPLY_NOT_EXIST:I = 0x4b

.field public static final KEY_TRY_APPLY_REPAIR:I = 0x46

.field public static final KEY_TRY_APPLY_ROM_SPACE:I = 0x4d

.field public static final KEY_TRY_APPLY_RUNNING:I = 0x49

.field public static final KEY_TRY_APPLY_SUCCESS:I = 0x3

.field public static final KEY_TRY_APPLY_UPGRADE:I = 0x47

.field private static final TAG:Ljava/lang/String; = "Tinker.TinkerReport"

.field private static reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onApplied(ZJZ)V
    .locals 5
    .param p0, "isUpgrade"    # Z
    .param p1, "cost"    # J
    .param p3, "success"    # Z

    .prologue
    const/4 v4, 0x0

    .line 409
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    if-nez v0, :cond_0

    .line 469
    :goto_0
    return-void

    .line 412
    :cond_0
    if-eqz p3, :cond_1

    .line 413
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    .line 416
    :cond_1
    if-eqz p0, :cond_3

    .line 417
    if-eqz p3, :cond_2

    .line 418
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x65

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    .line 431
    :goto_1
    const-string v0, "Tinker.TinkerReport"

    const-string v1, "hp_report report apply cost = %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_5

    .line 434
    const-string v0, "Tinker.TinkerReport"

    const-string v1, "hp_report report apply cost failed, invalid cost"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 420
    :cond_2
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x67

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_1

    .line 424
    :cond_3
    if-eqz p3, :cond_4

    .line 425
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_1

    .line 427
    :cond_4
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x66

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_1

    .line 438
    :cond_5
    const-wide/16 v0, 0x1388

    cmp-long v0, p1, v0

    if-gtz v0, :cond_7

    .line 439
    if-eqz p3, :cond_6

    .line 440
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0xc8

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 442
    :cond_6
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0xcd

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 444
    :cond_7
    const-wide/16 v0, 0x2710

    cmp-long v0, p1, v0

    if-gtz v0, :cond_9

    .line 445
    if-eqz p3, :cond_8

    .line 446
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0xc9

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 448
    :cond_8
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0xce

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 450
    :cond_9
    const-wide/16 v0, 0x7530

    cmp-long v0, p1, v0

    if-gtz v0, :cond_b

    .line 451
    if-eqz p3, :cond_a

    .line 452
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0xca

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto/16 :goto_0

    .line 454
    :cond_a
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0xcf

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto/16 :goto_0

    .line 456
    :cond_b
    const-wide/32 v0, 0xea60

    cmp-long v0, p1, v0

    if-gtz v0, :cond_d

    .line 457
    if-eqz p3, :cond_c

    .line 458
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0xcb

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto/16 :goto_0

    .line 460
    :cond_c
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0xd0

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto/16 :goto_0

    .line 463
    :cond_d
    if-eqz p3, :cond_e

    .line 464
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0xcc

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto/16 :goto_0

    .line 466
    :cond_e
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0xd1

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto/16 :goto_0
.end method

.method public static onApplyCrash(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 509
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    if-nez v0, :cond_0

    .line 514
    :goto_0
    return-void

    .line 512
    :cond_0
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x78

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    .line 513
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tinker Exception:apply tinker occur exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/tencent/bugly/beta/tinker/TinkerUtils;->getExceptionCauseString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onApplyDexOptFail(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 364
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    if-nez v0, :cond_0

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_0
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x79

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    .line 368
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tinker Exception:apply tinker occur exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/tencent/bugly/beta/tinker/TinkerUtils;->getExceptionCauseString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onApplyExtractFail(I)V
    .locals 2
    .param p0, "fileType"    # I

    .prologue
    .line 386
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    if-nez v0, :cond_0

    .line 406
    :goto_0
    return-void

    .line 389
    :cond_0
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 400
    :pswitch_1
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0xb5

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 391
    :pswitch_2
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0xb6

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 394
    :pswitch_3
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0xb7

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 397
    :pswitch_4
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0xb8

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 403
    :pswitch_5
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0xb9

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static onApplyInfoCorrupted()V
    .locals 2

    .prologue
    .line 372
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    if-nez v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 375
    :cond_0
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x7a

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0
.end method

.method public static onApplyPackageCheckFail(I)V
    .locals 5
    .param p0, "errorCode"    # I

    .prologue
    .line 472
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    if-nez v0, :cond_0

    .line 506
    :goto_0
    return-void

    .line 475
    :cond_0
    const-string v0, "Tinker.TinkerReport"

    const-string v1, "hp_report package check failed, error = %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 503
    :pswitch_0
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x9e

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 479
    :pswitch_1
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x96

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 482
    :pswitch_2
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x97

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 485
    :pswitch_3
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x98

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 488
    :pswitch_4
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x9a

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 491
    :pswitch_5
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x99

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 494
    :pswitch_6
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x9c

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 497
    :pswitch_7
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x9b

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 500
    :pswitch_8
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x9d

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 477
    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_0
        :pswitch_8
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_1
    .end packed-switch
.end method

.method public static onApplyPatchServiceStart()V
    .locals 2

    .prologue
    .line 357
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    if-nez v0, :cond_0

    .line 361
    :goto_0
    return-void

    .line 360
    :cond_0
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0
.end method

.method public static onApplyVersionCheckFail()V
    .locals 2

    .prologue
    .line 379
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    if-nez v0, :cond_0

    .line 383
    :goto_0
    return-void

    .line 382
    :cond_0
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0xb4

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0
.end method

.method public static onFastCrashProtect()V
    .locals 2

    .prologue
    .line 517
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    if-nez v0, :cond_0

    .line 521
    :goto_0
    return-void

    .line 520
    :cond_0
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0
.end method

.method public static onLoadException(Ljava/lang/Throwable;I)V
    .locals 5
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "errorCode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 318
    sget-object v2, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    if-nez v2, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    packed-switch p1, :pswitch_data_0

    :goto_1
    move v0, v1

    .line 351
    :goto_2
    if-nez v0, :cond_0

    .line 352
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tinker Exception:load tinker occur exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/tencent/bugly/beta/tinker/TinkerUtils;->getExceptionCauseString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "checkDexInstall failed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 325
    sget-object v2, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v3, 0xfd

    invoke-interface {v2, v3}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    .line 327
    const-string v2, "Tinker.TinkerReport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tinker dex check fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 329
    :cond_2
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v2, 0xfc

    invoke-interface {v0, v2}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    .line 330
    const-string v0, "Tinker.TinkerReport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tinker dex reflect fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 332
    goto :goto_2

    .line 334
    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "checkResInstall failed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 335
    sget-object v2, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v3, 0xff

    invoke-interface {v2, v3}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    .line 337
    const-string v2, "Tinker.TinkerReport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tinker res check fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 339
    :cond_3
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v2, 0xfe

    invoke-interface {v0, v2}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    .line 340
    const-string v0, "Tinker.TinkerReport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tinker res reflect fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 342
    goto/16 :goto_2

    .line 344
    :pswitch_2
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v2, 0xfb

    invoke-interface {v0, v2}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    move v0, v1

    .line 345
    goto/16 :goto_2

    .line 347
    :pswitch_3
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v2, 0xfa

    invoke-interface {v0, v2}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto/16 :goto_1

    .line 322
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static onLoadFileMisMatch(I)V
    .locals 2
    .param p0, "fileType"    # I

    .prologue
    .line 301
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    if-nez v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 304
    :cond_0
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 306
    :pswitch_1
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x12c

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 309
    :pswitch_2
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x12d

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 312
    :pswitch_3
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x12e

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static onLoadFileNotFound(I)V
    .locals 2
    .param p0, "fileType"    # I

    .prologue
    .line 275
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    if-nez v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 278
    :cond_0
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 289
    :pswitch_1
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x131

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 280
    :pswitch_2
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x133

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 283
    :pswitch_3
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x12f

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 286
    :pswitch_4
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x130

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 292
    :pswitch_5
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x132

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 295
    :pswitch_6
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x134

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public static onLoadInfoCorrupted()V
    .locals 2

    .prologue
    .line 268
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    if-nez v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 271
    :cond_0
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x135

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0
.end method

.method public static onLoadPackageCheckFail(I)V
    .locals 2
    .param p0, "errorCode"    # I

    .prologue
    .line 208
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    if-nez v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 211
    :cond_0
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 238
    :pswitch_0
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x166

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 213
    :pswitch_1
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x15e

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 216
    :pswitch_2
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x15f

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 219
    :pswitch_3
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x160

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 222
    :pswitch_4
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x162

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 225
    :pswitch_5
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x161

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 228
    :pswitch_6
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x163

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 232
    :pswitch_7
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x164

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 235
    :pswitch_8
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x165

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_0
        :pswitch_8
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_1
    .end packed-switch
.end method

.method public static onLoaded(J)V
    .locals 4
    .param p0, "cost"    # J

    .prologue
    .line 244
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    if-nez v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 247
    :cond_0
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    .line 249
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 250
    const-string v0, "Tinker.TinkerReport"

    const-string v1, "hp_report report load cost failed, invalid cost"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 254
    :cond_1
    const-wide/16 v0, 0x1f4

    cmp-long v0, p0, v0

    if-gtz v0, :cond_2

    .line 255
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x190

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 256
    :cond_2
    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-gtz v0, :cond_3

    .line 257
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x191

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 258
    :cond_3
    const-wide/16 v0, 0xbb8

    cmp-long v0, p0, v0

    if-gtz v0, :cond_4

    .line 259
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x192

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 260
    :cond_4
    const-wide/16 v0, 0x1388

    cmp-long v0, p0, v0

    if-gtz v0, :cond_5

    .line 261
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x193

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 263
    :cond_5
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x194

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0
.end method

.method public static onReportRetryPatch()V
    .locals 2

    .prologue
    .line 535
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    if-nez v0, :cond_0

    .line 539
    :goto_0
    return-void

    .line 538
    :cond_0
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0
.end method

.method public static onTryApply(ZZ)V
    .locals 2
    .param p0, "upgrade"    # Z
    .param p1, "success"    # Z

    .prologue
    .line 155
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    if-nez v0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    .line 159
    if-eqz p0, :cond_2

    .line 160
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x47

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    .line 164
    :goto_1
    if-eqz p1, :cond_0

    .line 165
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 162
    :cond_2
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x46

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_1
.end method

.method public static onTryApplyFail(I)V
    .locals 2
    .param p0, "errorCode"    # I

    .prologue
    .line 170
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 173
    :cond_0
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 202
    :pswitch_0
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x51

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 175
    :pswitch_1
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x4b

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 178
    :pswitch_2
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x48

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 181
    :pswitch_3
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x4a

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 184
    :pswitch_4
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x49

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 187
    :pswitch_5
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x4d

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 190
    :pswitch_6
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x4c

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 193
    :pswitch_7
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x4e

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 196
    :pswitch_8
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x50

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 199
    :pswitch_9
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x4f

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static onXposedCrash()V
    .locals 2

    .prologue
    .line 524
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    if-nez v0, :cond_0

    .line 532
    :goto_0
    return-void

    .line 527
    :cond_0
    invoke-static {}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isVmArt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0

    .line 530
    :cond_1
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;->onReport(I)V

    goto :goto_0
.end method


# virtual methods
.method public setReporter(Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;)V
    .locals 0
    .param p1, "reporter"    # Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    .prologue
    .line 151
    sput-object p1, Lcom/tencent/bugly/beta/tinker/TinkerReport;->reporter:Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    .line 152
    return-void
.end method
