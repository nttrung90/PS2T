.class public Lj0/m0$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj0/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:Lj0/m0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lj0/m0;

    invoke-direct {v0}, Lj0/m0;-><init>()V

    invoke-direct {p0, v0}, Lj0/m0$e;-><init>(Lj0/m0;)V

    return-void
.end method

.method public constructor <init>(Lj0/m0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lj0/m0$e;->a:Lj0/m0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public b()Lj0/m0;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public c(Lc0/b;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public d(Lc0/b;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
