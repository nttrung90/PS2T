.class public abstract Lo0/c;
.super Lo0/a;
.source "SourceFile"


# instance fields
.field public k:I

.field public l:I

.field public m:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lo0/a;-><init>(Landroid/content/Context;)V

    .line 2
    iput p2, p0, Lo0/c;->l:I

    iput p2, p0, Lo0/c;->k:I

    const-string p2, "layout_inflater"

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lo0/c;->m:Landroid/view/LayoutInflater;

    return-void
.end method
