.class public Lmiuix/visual/check/BorderLayout$DrawableTarget;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/visual/check/BorderLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawableTarget"
.end annotation


# instance fields
.field private alpha:F

.field private mImg:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lmiuix/visual/check/BorderLayout$DrawableTarget;->alpha:F

    iput-object p1, p0, Lmiuix/visual/check/BorderLayout$DrawableTarget;->mImg:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 0

    iget p0, p0, Lmiuix/visual/check/BorderLayout$DrawableTarget;->alpha:F

    return p0
.end method

.method public setAlpha(F)V
    .locals 1

    iput p1, p0, Lmiuix/visual/check/BorderLayout$DrawableTarget;->alpha:F

    iget-object p0, p0, Lmiuix/visual/check/BorderLayout$DrawableTarget;->mImg:Landroid/graphics/drawable/Drawable;

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method
