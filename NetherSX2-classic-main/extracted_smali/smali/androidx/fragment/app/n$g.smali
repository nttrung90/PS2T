.class public final Landroidx/fragment/app/n$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/n;->registerForActivityResult(Lc/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lm/a<",
        "Ljava/lang/Void;",
        "Landroidx/activity/result/ActivityResultRegistry;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/fragment/app/n;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/n;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/n$g;->a:Landroidx/fragment/app/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/n$g;->a:Landroidx/fragment/app/n;

    iget-object v1, v0, Landroidx/fragment/app/n;->v:Landroidx/fragment/app/t;

    instance-of v2, v1, Landroidx/activity/result/d;

    if-eqz v2, :cond_0

    .line 2
    check-cast v1, Landroidx/activity/result/d;

    invoke-interface {v1}, Landroidx/activity/result/d;->h()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/n;->requireActivity()Landroidx/fragment/app/o;

    move-result-object v0

    .line 4
    iget-object v0, v0, Landroidx/activity/ComponentActivity;->j:Landroidx/activity/ComponentActivity$b;

    :goto_0
    return-object v0
.end method
