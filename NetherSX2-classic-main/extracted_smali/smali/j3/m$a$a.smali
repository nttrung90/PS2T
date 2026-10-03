.class public final Lj3/m$a$a;
.super Ld3/f;
.source "SourceFile"

# interfaces
.implements Lc3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj3/m$a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld3/f;",
        "Lc3/l<",
        "Lw2/f$b;",
        "Lj3/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lj3/m$a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj3/m$a$a;

    invoke-direct {v0}, Lj3/m$a$a;-><init>()V

    sput-object v0, Lj3/m$a$a;->d:Lj3/m$a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ld3/f;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lw2/f$b;

    .line 2
    instance-of v0, p1, Lj3/m;

    if-eqz v0, :cond_0

    check-cast p1, Lj3/m;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
