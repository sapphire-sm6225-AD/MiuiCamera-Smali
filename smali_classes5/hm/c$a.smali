.class public final Lhm/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhm/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lqk/i0;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static a(Lhm/c;I)[Ljava/lang/Object;
    .locals 0
    .param p0    # Lhm/c;
        .annotation build Ler/d;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhm/c<",
            "TT;>;I)[TT;"
        }
    .end annotation

    .annotation build Ler/d;
    .end annotation

    new-instance p0, Lqk/k0;

    const-string p1, "Generated by Android Extensions automatically"

    invoke-direct {p0, p1}, Lqk/k0;-><init>(Ljava/lang/String;)V

    throw p0
.end method
