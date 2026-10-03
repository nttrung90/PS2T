.class public final Lw0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw0/a$a;,
        Lw0/a$b;
    }
.end annotation


# instance fields
.field public final a:Lw0/a$a;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "editText cannot be null"

    .line 2
    invoke-static {p1, v0}, Ln2/e;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lw0/a$a;

    invoke-direct {v0, p1}, Lw0/a$a;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Lw0/a;->a:Lw0/a$a;

    return-void
.end method
