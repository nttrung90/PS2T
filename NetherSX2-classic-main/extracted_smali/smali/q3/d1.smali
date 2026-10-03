.class public final Lq3/d1;
.super Landroidx/fragment/app/n;
.source "SourceFile"


# instance fields
.field public c0:Lxyz/aethersx2/android/MainActivity;


# direct methods
.method public constructor <init>(Lxyz/aethersx2/android/MainActivity;)V
    .locals 1

    const v0, 0x7f0c0038

    .line 1
    invoke-direct {p0, v0}, Landroidx/fragment/app/n;-><init>(I)V

    .line 2
    iput-object p1, p0, Lq3/d1;->c0:Lxyz/aethersx2/android/MainActivity;

    return-void
.end method


# virtual methods
.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/n;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090244

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, ".bin/.iso (ISO Disc Images)\n.chd (Compressed Hunks of Data)\n.cso (Compressed ISO)\n.gz (Gzip Compressed ISO)"

    aput-object v2, v0, v1

    const v1, 0x7f100103

    .line 3
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/n;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f09005a

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance p2, Lq3/f;

    const/4 v0, 0x5

    invoke-direct {p2, p0, v0}, Lq3/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
