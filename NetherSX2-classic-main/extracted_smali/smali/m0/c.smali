.class public final Lm0/c;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lm0/d;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputConnection;Lm0/d;)V
    .locals 0

    iput-object p2, p0, Lm0/c;->a:Lm0/d;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public final commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lm0/c;->a:Lm0/d;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lm0/e;

    new-instance v2, Lm0/e$a;

    invoke-direct {v2, p1}, Lm0/e$a;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lm0/e;-><init>(Lm0/e$b;)V

    .line 3
    :goto_0
    check-cast v0, Lm0/b;

    invoke-virtual {v0, v1, p2, p3}, Lm0/b;->e(Lm0/e;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
