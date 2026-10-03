.class public final Lj3/y0;
.super Lw2/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj3/y0$a;
    }
.end annotation


# static fields
.field public static final c:Lj3/y0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj3/y0$a;

    invoke-direct {v0}, Lj3/y0$a;-><init>()V

    sput-object v0, Lj3/y0;->c:Lj3/y0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lj3/y0;->c:Lj3/y0$a;

    invoke-direct {p0, v0}, Lw2/a;-><init>(Lw2/f$c;)V

    return-void
.end method
