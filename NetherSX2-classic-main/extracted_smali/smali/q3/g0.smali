.class public final synthetic Lq3/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic c:[Ljava/util/List;

.field public final synthetic d:[Z

.field public final synthetic e:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>([Ljava/util/List;[ZLandroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/g0;->c:[Ljava/util/List;

    iput-object p2, p0, Lq3/g0;->d:[Z

    iput-object p3, p0, Lq3/g0;->e:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object p1, p0, Lq3/g0;->c:[Ljava/util/List;

    iget-object p2, p0, Lq3/g0;->d:[Z

    iget-object v0, p0, Lq3/g0;->e:Landroid/app/Activity;

    .line 1
    new-instance v1, Lq3/k0$c;

    invoke-direct {v1, p1, p2}, Lq3/k0$c;-><init>([Ljava/util/List;[Z)V

    .line 2
    iget-object p1, v1, Lq3/k0$c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const p1, 0x7f10007a

    .line 3
    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 4
    :cond_0
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->getDataDirectory()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v2, v1, Lq3/k0$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    move p1, p2

    :goto_1
    if-nez p1, :cond_4

    const p1, 0x7f100071

    .line 10
    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    goto :goto_2

    .line 11
    :cond_4
    invoke-virtual {v1, v0}, Lq3/k0$c;->g(Landroid/app/Activity;)V

    .line 12
    new-instance p1, Ly0/b;

    const/4 p2, 0x2

    invoke-direct {p1, v1, v0, p2}, Ly0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method
