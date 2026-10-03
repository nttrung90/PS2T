.class public final synthetic Lq3/h2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lxyz/aethersx2/android/MainActivity;

.field public final synthetic e:Lxyz/aethersx2/android/i;

.field public final synthetic f:Lxyz/aethersx2/android/GameListEntry;


# direct methods
.method public synthetic constructor <init>(Lxyz/aethersx2/android/MainActivity;Lxyz/aethersx2/android/GameListEntry;Lxyz/aethersx2/android/i;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lq3/h2;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/h2;->d:Lxyz/aethersx2/android/MainActivity;

    iput-object p2, p0, Lq3/h2;->f:Lxyz/aethersx2/android/GameListEntry;

    iput-object p3, p0, Lq3/h2;->e:Lxyz/aethersx2/android/i;

    return-void
.end method

.method public synthetic constructor <init>(Lxyz/aethersx2/android/MainActivity;Lxyz/aethersx2/android/i;Lxyz/aethersx2/android/GameListEntry;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lq3/h2;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/h2;->d:Lxyz/aethersx2/android/MainActivity;

    iput-object p2, p0, Lq3/h2;->e:Lxyz/aethersx2/android/i;

    iput-object p3, p0, Lq3/h2;->f:Lxyz/aethersx2/android/GameListEntry;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget p1, p0, Lq3/h2;->c:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lq3/h2;->d:Lxyz/aethersx2/android/MainActivity;

    iget-object p2, p0, Lq3/h2;->f:Lxyz/aethersx2/android/GameListEntry;

    iget-object v0, p0, Lq3/h2;->e:Lxyz/aethersx2/android/i;

    sget v1, Lxyz/aethersx2/android/MainActivity;->K:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {p2}, Lxyz/aethersx2/android/GameListEntry;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 2
    iget-object v0, v0, Lxyz/aethersx2/android/i;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, p2, v0}, Lxyz/aethersx2/android/MainActivity;->H(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :goto_0
    iget-object p1, p0, Lq3/h2;->d:Lxyz/aethersx2/android/MainActivity;

    iget-object p2, p0, Lq3/h2;->e:Lxyz/aethersx2/android/i;

    iget-object v0, p0, Lq3/h2;->f:Lxyz/aethersx2/android/GameListEntry;

    sget v1, Lxyz/aethersx2/android/MainActivity;->K:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Ljava/io/File;

    .line 6
    iget-object p2, p2, Lxyz/aethersx2/android/i;->e:Ljava/lang/String;

    .line 7
    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 9
    invoke-virtual {v0}, Lxyz/aethersx2/android/GameListEntry;->getPath()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lxyz/aethersx2/android/MainActivity;->H(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
