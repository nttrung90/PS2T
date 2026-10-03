.class Landroidx/fragment/app/Fragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/k;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/n;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/n;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/Fragment$6;->a:Landroidx/fragment/app/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Landroidx/lifecycle/m;Landroidx/lifecycle/h$b;)V
    .locals 0

    .line 1
    sget-object p1, Landroidx/lifecycle/h$b;->ON_STOP:Landroidx/lifecycle/h$b;

    if-ne p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/fragment/app/Fragment$6;->a:Landroidx/fragment/app/n;

    iget-object p1, p1, Landroidx/fragment/app/n;->J:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    :cond_0
    return-void
.end method
