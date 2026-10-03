.class public final Ln3/l;
.super Lj3/m;
.source "SourceFile"


# static fields
.field public static final d:Ln3/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln3/l;

    invoke-direct {v0}, Ln3/l;-><init>()V

    sput-object v0, Ln3/l;->d:Ln3/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lj3/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lw2/f;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget-object p1, Ln3/c;->e:Ln3/c;

    sget-object v0, Ln3/k;->g:Ln3/i;

    .line 2
    iget-object p1, p1, Ln3/f;->d:Ln3/a;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Ln3/a;->c(Ljava/lang/Runnable;Ln3/h;Z)V

    return-void
.end method
