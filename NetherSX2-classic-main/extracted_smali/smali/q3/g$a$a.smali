.class public final Lq3/g$a$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/g$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lq3/g$a;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z


# direct methods
.method public constructor <init>(Lq3/g$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lq3/g$a$a;->a:Lq3/g$a;

    .line 3
    iput-object p2, p0, Lq3/g$a$a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lq3/g$a$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lq3/g$a$a;->a:Lq3/g$a;

    invoke-virtual {p1}, Landroidx/fragment/app/n;->getActivity()Landroidx/fragment/app/o;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lq3/g$a$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lq3/g$a$a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lxyz/aethersx2/android/NativeLibrary;->cheevosLogin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lq3/g$a$a;->d:Z

    .line 4
    new-instance v0, Landroidx/activity/d;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroidx/activity/d;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
