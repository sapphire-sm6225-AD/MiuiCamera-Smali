.class public Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$Api23Impl;,
        Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;,
        Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;,
        Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static from(Landroid/content/Context;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    invoke-direct {v0, p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    invoke-static {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$Api23Impl;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p0

    return-object p0
.end method

.method public static unwrapCryptoObject(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    invoke-static {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$Api23Impl;->unwrapCryptoObject(Ljava/lang/Object;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    move-result-object p0

    return-object p0
.end method

.method private static wrapCallback(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    new-instance v0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;

    invoke-direct {v0, p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;-><init>(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)V

    return-object v0
.end method

.method private static wrapCryptoObject(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    invoke-static {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$Api23Impl;->wrapCryptoObject(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public authenticate(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroidx/core/os/CancellationSignal;Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V
    .locals 6
    .param p1    # Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/core/os/CancellationSignal;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.USE_FINGERPRINT"
    .end annotation

    iget-object p0, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroidx/core/os/CancellationSignal;->getCancellationSignalObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/CancellationSignal;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move-object v2, p0

    invoke-static {p1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->wrapCryptoObject(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-result-object v1

    invoke-static {p4}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->wrapCallback(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v4

    move v3, p2

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$Api23Impl;->authenticate(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/CancellationSignal;ILjava/lang/Object;Landroid/os/Handler;)V

    :cond_1
    return-void
.end method

.method public hasEnrolledFingerprints()Z
    .locals 0
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.USE_FINGERPRINT"
    .end annotation

    iget-object p0, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$Api23Impl;->hasEnrolledFingerprints(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHardwareDetected()Z
    .locals 0
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.USE_FINGERPRINT"
    .end annotation

    iget-object p0, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$Api23Impl;->isHardwareDetected(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
