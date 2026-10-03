.class public final Lj3/v0;
.super Lj3/m;
.source "SourceFile"


# static fields
.field public static final d:Lj3/v0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj3/v0;

    invoke-direct {v0}, Lj3/v0;-><init>()V

    sput-object v0, Lj3/v0;->d:Lj3/v0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lj3/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lw2/f;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    sget-object p2, Lj3/y0;->c:Lj3/y0$a;

    invoke-interface {p1, p2}, Lw2/f;->get(Lw2/f$c;)Lw2/f$b;

    move-result-object p1

    check-cast p1, Lj3/y0;

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.Unconfined"

    return-object v0
.end method
