.class public final synthetic Lq3/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$e;
.implements Lxyz/aethersx2/android/a$a;
.implements Landroidx/appcompat/widget/s0$a;


# instance fields
.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lq3/z;->c:Ljava/lang/Object;

    iput-object p2, p0, Lq3/z;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroidx/preference/Preference;)Z
    .locals 7

    iget-object p1, p0, Lq3/z;->c:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/b$a;

    iget-object v0, p0, Lq3/z;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/ListPreference;

    .line 1
    new-instance v1, Lxyz/aethersx2/android/a;

    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p1, Lxyz/aethersx2/android/b$a;->m0:I

    new-instance v4, Lq3/z;

    invoke-direct {v4, p1, v0}, Lq3/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, v2, v3, v4}, Lxyz/aethersx2/android/a;-><init>(Landroid/content/Context;ILxyz/aethersx2/android/a$a;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget v5, v0, v4

    .line 4
    invoke-static {v5}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 5
    invoke-static {v5}, Lxyz/aethersx2/android/EmulationSurfaceView;->c(Landroid/view/InputDevice;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6
    invoke-static {v5}, Lxyz/aethersx2/android/EmulationSurfaceView;->e(Landroid/view/InputDevice;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    new-instance p1, Landroidx/appcompat/app/d$a;

    iget-object v0, v1, Lxyz/aethersx2/android/a;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    const v0, 0x7f10004c

    .line 10
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/d$a;->c(I)Landroidx/appcompat/app/d$a;

    const v0, 0x7f100036

    .line 11
    sget-object v1, Lq3/k;->e:Lq3/k;

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/d$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    .line 12
    invoke-virtual {p1}, Landroidx/appcompat/app/d$a;->a()Landroidx/appcompat/app/d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    move v2, v3

    .line 14
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 15
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputDevice;

    invoke-virtual {v4}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 16
    :cond_4
    new-instance v2, Landroidx/appcompat/app/d$a;

    iget-object v4, v1, Lxyz/aethersx2/android/a;->a:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    const v4, 0x7f10004d

    .line 17
    invoke-virtual {v2, v4}, Landroidx/appcompat/app/d$a;->j(I)Landroidx/appcompat/app/d$a;

    .line 18
    new-instance v4, Lq3/q;

    invoke-direct {v4, v1, p1, v3}, Lq3/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v0, v4}, Landroidx/appcompat/app/d$a;->b([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    .line 19
    invoke-virtual {v2}, Landroidx/appcompat/app/d$a;->a()Landroidx/appcompat/app/d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_3
    const/4 p1, 0x1

    return p1
.end method

.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 8

    iget-object v0, p0, Lq3/z;->c:Ljava/lang/Object;

    check-cast v0, Lxyz/aethersx2/android/MainActivity;

    iget-object v1, p0, Lq3/z;->d:Ljava/lang/Object;

    check-cast v1, Lxyz/aethersx2/android/GameListEntry;

    sget v2, Lxyz/aethersx2/android/MainActivity;->K:I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x7f090127

    if-ne p1, v4, :cond_0

    .line 2
    invoke-virtual {v1}, Lxyz/aethersx2/android/GameListEntry;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lxyz/aethersx2/android/MainActivity;->H(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const v4, 0x7f090126

    if-ne p1, v4, :cond_2

    .line 3
    invoke-virtual {v1}, Lxyz/aethersx2/android/GameListEntry;->getSerial()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lxyz/aethersx2/android/GameListEntry;->getCRC()I

    move-result v2

    const/4 v4, -0x1

    invoke-static {p1, v2, v4}, Lxyz/aethersx2/android/NativeLibrary;->getSaveStatePath(Ljava/lang/String;II)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    const p1, 0x7f100192

    .line 6
    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 7
    :cond_1
    invoke-virtual {v1}, Lxyz/aethersx2/android/GameListEntry;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lxyz/aethersx2/android/MainActivity;->H(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const v4, 0x7f090124

    if-ne p1, v4, :cond_5

    .line 8
    invoke-virtual {v1}, Lxyz/aethersx2/android/GameListEntry;->getSerial()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {v1}, Lxyz/aethersx2/android/GameListEntry;->getCRC()I

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_1

    .line 9
    :cond_3
    invoke-virtual {v1}, Lxyz/aethersx2/android/GameListEntry;->getSerial()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lxyz/aethersx2/android/GameListEntry;->getCRC()I

    move-result v2

    invoke-static {v0, p1, v2}, Lxyz/aethersx2/android/i;->c(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 10
    move-object v2, p1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_1

    .line 11
    :cond_4
    new-instance v2, Lxyz/aethersx2/android/h;

    const v4, 0x7f1000a4

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p1, v4}, Lxyz/aethersx2/android/h;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 12
    new-instance p1, Lq3/k2;

    invoke-direct {p1, v0, v1}, Lq3/k2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    iput-object p1, v2, Lxyz/aethersx2/android/h;->x0:Lxyz/aethersx2/android/h$a;

    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/o;->v()Landroidx/fragment/app/y;

    move-result-object p1

    const-string v0, "SaveStateGridFragment"

    invoke-virtual {v2, p1, v0}, Landroidx/fragment/app/m;->show(Landroidx/fragment/app/y;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const v4, 0x7f090125

    if-ne p1, v4, :cond_6

    .line 15
    invoke-virtual {v1}, Lxyz/aethersx2/android/GameListEntry;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 16
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lxyz/aethersx2/android/GamePropertiesActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "path"

    .line 17
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_6
    const v4, 0x7f090122

    if-ne p1, v4, :cond_7

    .line 19
    invoke-virtual {v1}, Lxyz/aethersx2/android/GameListEntry;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 20
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "image/*"

    .line 21
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.OPENABLE"

    .line 22
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    iput-object p1, v0, Lxyz/aethersx2/android/MainActivity;->G:Ljava/lang/String;

    const p1, 0x7f100145

    .line 24
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_7
    const v4, 0x7f090123

    const/4 v5, 0x0

    if-ne p1, v4, :cond_a

    .line 25
    const-class p1, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutManager;

    if-eqz p1, :cond_9

    .line 26
    invoke-virtual {p1}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_0

    .line 27
    :cond_8
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lxyz/aethersx2/android/EmulationActivity;

    invoke-direct {v4, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "android.intent.action.VIEW"

    .line 28
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-virtual {v1}, Lxyz/aethersx2/android/GameListEntry;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "bootPath"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    new-instance v6, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-virtual {v1}, Lxyz/aethersx2/android/GameListEntry;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v6, v4}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 32
    invoke-virtual {v1, v0}, Lxyz/aethersx2/android/GameListEntry;->getIconForLauncher(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 33
    invoke-virtual {v1}, Lxyz/aethersx2/android/GameListEntry;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    new-array v4, v3, [Ljava/lang/Object;

    .line 34
    invoke-virtual {v1}, Lxyz/aethersx2/android/GameListEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const-string v1, "%s (NetherSX2)"

    invoke-static {v1, v4}, Lxyz/aethersx2/android/FileHelper;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 35
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    .line 36
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/ShortcutManager;->requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    move-result v5

    :cond_9
    :goto_0
    if-nez v5, :cond_b

    const p1, 0x7f100040

    .line 37
    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_a
    move v3, v5

    :cond_b
    :goto_1
    return v3
.end method
