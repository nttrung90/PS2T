.class public final synthetic Lq3/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lxyz/aethersx2/android/d;

.field public final synthetic d:Z

.field public final synthetic e:Lxyz/aethersx2/android/AndroidProgressCallback;


# direct methods
.method public synthetic constructor <init>(Lxyz/aethersx2/android/d;ZLxyz/aethersx2/android/AndroidProgressCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/u1;->c:Lxyz/aethersx2/android/d;

    iput-boolean p2, p0, Lq3/u1;->d:Z

    iput-object p3, p0, Lq3/u1;->e:Lxyz/aethersx2/android/AndroidProgressCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lq3/u1;->c:Lxyz/aethersx2/android/d;

    iget-boolean v1, p0, Lq3/u1;->d:Z

    iget-object v2, p0, Lq3/u1;->e:Lxyz/aethersx2/android/AndroidProgressCallback;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1
    invoke-static {v1, v3, v2}, Lxyz/aethersx2/android/NativeLibrary;->refreshGameList(ZZLxyz/aethersx2/android/AndroidProgressCallback;)V

    .line 2
    invoke-static {}, Lxyz/aethersx2/android/NativeLibrary;->getGameListEntries()[Lxyz/aethersx2/android/GameListEntry;

    move-result-object v1

    .line 3
    new-instance v3, Lxyz/aethersx2/android/d$a;

    invoke-direct {v3}, Lxyz/aethersx2/android/d$a;-><init>()V

    invoke-static {v1, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 4
    iget-object v3, v0, Lxyz/aethersx2/android/d;->a:Landroid/app/Activity;

    new-instance v4, Landroidx/emoji2/text/e;

    const/4 v5, 0x4

    invoke-direct {v4, v0, v2, v1, v5}, Landroidx/emoji2/text/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
