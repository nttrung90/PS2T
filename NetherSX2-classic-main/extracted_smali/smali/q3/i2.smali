.class public final synthetic Lq3/i2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lxyz/aethersx2/android/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lxyz/aethersx2/android/MainActivity;I)V
    .locals 0

    iput p2, p0, Lq3/i2;->c:I

    iput-object p1, p0, Lq3/i2;->d:Lxyz/aethersx2/android/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lq3/i2;->c:I

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lq3/i2;->d:Lxyz/aethersx2/android/MainActivity;

    .line 1
    iget-object v0, p1, Lxyz/aethersx2/android/MainActivity;->z:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Lxyz/aethersx2/android/MainActivity;->z:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->b()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Lxyz/aethersx2/android/MainActivity;->z:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 4
    invoke-virtual {p1, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->e(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->p(Landroid/view/View;)V

    :goto_0
    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No drawer view found with gravity "

    .line 7
    invoke-static {v0}, Landroid/support/v4/media/a;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8
    invoke-static {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->j(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :goto_1
    iget-object p1, p0, Lq3/i2;->d:Lxyz/aethersx2/android/MainActivity;

    sget v0, Lxyz/aethersx2/android/MainActivity;->K:I

    .line 10
    invoke-virtual {p1}, Lxyz/aethersx2/android/MainActivity;->K()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
