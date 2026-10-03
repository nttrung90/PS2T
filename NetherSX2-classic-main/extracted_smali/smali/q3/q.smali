.class public final synthetic Lq3/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lq3/q;->c:I

    iput-object p1, p0, Lq3/q;->d:Ljava/lang/Object;

    iput-object p2, p0, Lq3/q;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget v0, p0, Lq3/q;->c:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lq3/q;->d:Ljava/lang/Object;

    check-cast v0, Lxyz/aethersx2/android/MemoryCardNamePreference;

    iget-object v1, p0, Lq3/q;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lxyz/aethersx2/android/MemoryCardNamePreference;->Y(Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    .line 3
    :pswitch_1
    iget-object p1, p0, Lq3/q;->d:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/MainActivity;

    iget-object p2, p0, Lq3/q;->e:Ljava/lang/Object;

    check-cast p2, Lxyz/aethersx2/android/GameListEntry;

    sget v0, Lxyz/aethersx2/android/MainActivity;->K:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p2}, Lxyz/aethersx2/android/GameListEntry;->getPath()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lxyz/aethersx2/android/MainActivity;->H(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :pswitch_2
    iget-object p1, p0, Lq3/q;->d:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/a;

    iget-object v0, p0, Lq3/q;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p1, v0, p2}, Lxyz/aethersx2/android/a;->a(Lxyz/aethersx2/android/a;Ljava/util/ArrayList;I)V

    return-void

    :goto_0
    iget-object p1, p0, Lq3/q;->d:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/SaveStateManagerActivity$a;

    iget-object p2, p0, Lq3/q;->e:Ljava/lang/Object;

    check-cast p2, Lxyz/aethersx2/android/i;

    .line 6
    iget-object v0, p1, Lxyz/aethersx2/android/SaveStateManagerActivity$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eqz p2, :cond_2

    if-gez v0, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v1, p1, Lxyz/aethersx2/android/SaveStateManagerActivity$a;->c:Lxyz/aethersx2/android/SaveStateManagerActivity;

    invoke-virtual {p2, v1}, Lxyz/aethersx2/android/i;->a(Landroid/content/Context;)Z

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_1

    .line 8
    iget-object p1, p1, Lxyz/aethersx2/android/SaveStateManagerActivity$a;->c:Lxyz/aethersx2/android/SaveStateManagerActivity;

    const p2, 0x7f10019c

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 9
    :cond_1
    iget-object p2, p1, Lxyz/aethersx2/android/SaveStateManagerActivity$a;->e:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 10
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView$f;

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$f;->d(II)V

    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
