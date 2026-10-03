.class public final Landroidx/lifecycle/u$a;
.super Landroidx/lifecycle/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/u;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroidx/lifecycle/u;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/u;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/u$a;->this$1:Landroidx/lifecycle/u;

    invoke-direct {p0}, Landroidx/lifecycle/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 0

    iget-object p1, p0, Landroidx/lifecycle/u$a;->this$1:Landroidx/lifecycle/u;

    iget-object p1, p1, Landroidx/lifecycle/u;->this$0:Landroidx/lifecycle/t;

    invoke-virtual {p1}, Landroidx/lifecycle/t;->a()V

    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 0

    iget-object p1, p0, Landroidx/lifecycle/u$a;->this$1:Landroidx/lifecycle/u;

    iget-object p1, p1, Landroidx/lifecycle/u;->this$0:Landroidx/lifecycle/t;

    invoke-virtual {p1}, Landroidx/lifecycle/t;->c()V

    return-void
.end method
