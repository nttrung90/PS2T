.class public Lk0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/g$c;,
        Lk0/g$b;,
        Lk0/g$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lk0/g$c;

    invoke-direct {v0, p0}, Lk0/g$c;-><init>(Lk0/g;)V

    iput-object v0, p0, Lk0/g;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lk0/g;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)Lk0/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(I)Lk0/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(IILandroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
