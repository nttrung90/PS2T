.class public final Lc0/e$a;
.super Lv/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public Y:Lb0/d$e;


# direct methods
.method public constructor <init>(Lb0/d$e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv/d;-><init>()V

    .line 2
    iput-object p1, p0, Lc0/e$a;->Y:Lb0/d$e;

    return-void
.end method
