.class public Lfo/a$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfo/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public a:[Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Leo/b$n;->MiuixAppcompatAlphabetIndexer_miuixAppcompatIndexerTable:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    array-length v3, v1

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lfo/a$g;->a:[Ljava/lang/String;

    array-length v3, v1

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v6, v1, v4

    iget-object v7, p0, Lfo/a$g;->a:[Ljava/lang/String;

    add-int/lit8 v8, v5, 0x1

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v8

    goto :goto_0

    :cond_0
    sget v1, Leo/b$b;->alphabet_table:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfo/a$g;->a:[Ljava/lang/String;

    :cond_1
    sget v1, Leo/b$n;->MiuixAppcompatAlphabetIndexer_miuixAppcompatIndexerTextColorList:I

    sget v3, Leo/b$e;->miuix_appcompat_alphabet_indexer_text_light:I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    const/4 v1, 0x1

    new-array v3, v1, [I

    const v4, 0x10100a1

    aput v4, v3, v2

    sget v4, Leo/b$e;->miuix_appcompat_alphabet_indexer_highlight_text_color:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iput v3, p0, Lfo/a$g;->d:I

    new-array v1, v1, [I

    const v3, 0x10102fe

    aput v3, v1, v2

    sget v3, Leo/b$e;->miuix_appcompat_alphabet_indexer_activated_text_color:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lfo/a$g;->c:I

    new-array v1, v2, [I

    sget v2, Leo/b$e;->miuix_appcompat_alphabet_indexer_text_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iput p1, p0, Lfo/a$g;->b:I

    sget p1, Leo/b$n;->MiuixAppcompatAlphabetIndexer_miuixAppcompatIndexerTextSize:I

    sget v1, Leo/b$f;->miuix_appcompat_alphabet_indexer_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lfo/a$g;->e:I

    return-void
.end method
