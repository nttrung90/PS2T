.class public Lxyz/aethersx2/android/j$c;
.super Landroidx/preference/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxyz/aethersx2/android/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final k0:[Lxyz/aethersx2/android/MemoryCardNamePreference;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [Lxyz/aethersx2/android/MemoryCardNamePreference;

    sput-object v0, Lxyz/aethersx2/android/j$c;->k0:[Lxyz/aethersx2/android/MemoryCardNamePreference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final C(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 8

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    invoke-static {p1}, Lxyz/aethersx2/android/NativeLibrary;->getMemoryCardPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/high16 v4, 0x80000

    :try_start_2
    new-array v4, v4, [B

    const/4 v5, 0x0

    move v6, v5

    .line 6
    :goto_0
    invoke-virtual {p2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_1

    .line 7
    invoke-virtual {v1, v4, v5, v7}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v6, v7

    const/high16 v7, 0x4600000

    if-gt v6, v7, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 9
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 10
    new-instance p1, Ljava/io/IOException;

    const v2, 0x7f100136

    invoke-virtual {p0, v2}, Landroidx/fragment/app/n;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 12
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_2

    .line 13
    :try_start_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f100137

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/n;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 15
    :cond_2
    :try_start_5
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Failed to rename temporary file."

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_0
    move-exception p1

    .line 16
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_7
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz p2, :cond_3

    .line 17
    :try_start_8
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    :try_start_9
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "Failed to import memory card: "

    .line 19
    invoke-static {v1}, Landroid/support/v4/media/a;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    .line 1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lxyz/aethersx2/android/FileHelper;->getDocumentNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    if-eqz p2, :cond_2

    const-string v0, ".ps2"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2}, Lxyz/aethersx2/android/NativeLibrary;->getMemoryCardInfo(Ljava/lang/String;)Lxyz/aethersx2/android/MemoryCardInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0, p2, p1}, Lxyz/aethersx2/android/j$c;->C(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_1

    .line 6
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100135

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, p3, v2

    .line 7
    invoke-virtual {p0, v1, p3}, Landroidx/fragment/app/n;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p3, 0x7f10008b

    .line 8
    new-instance v1, Lq3/z0;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p2, p1, v2}, Lq3/z0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f100087

    .line 9
    sget-object p2, Lq3/e;->v:Lq3/e;

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 10
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 11
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Memory card file must have a .ps2 extension."

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_1
    return-void

    .line 12
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/n;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/preference/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Landroidx/preference/b;->e0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    return-void
.end method

.method public final z(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7

    const p1, 0x7f13000d

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/preference/b;->B(ILjava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroidx/preference/b;->y()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string p2, "__CREATE_NEW_MEMORY_CARD__"

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->X(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lq3/s2;

    invoke-direct {v0, p0, p2}, Lq3/s2;-><init>(Lxyz/aethersx2/android/j$c;I)V

    .line 4
    iput-object v0, p1, Landroidx/preference/Preference;->i:Landroidx/preference/Preference$e;

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/b;->y()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "__IMPORT_MEMORY_CARD__"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->X(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    new-instance v0, Lq3/u;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lq3/u;-><init>(Ljava/lang/Object;I)V

    .line 7
    iput-object v0, p1, Landroidx/preference/Preference;->i:Landroidx/preference/Preference$e;

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/b;->y()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "__SWAP_MEMORY_CARDS__"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->X(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 9
    new-instance v1, Lq3/s2;

    invoke-direct {v1, p0, v0}, Lq3/s2;-><init>(Lxyz/aethersx2/android/j$c;I)V

    .line 10
    iput-object v1, p1, Landroidx/preference/Preference;->i:Landroidx/preference/Preference$e;

    :cond_2
    move p1, v0

    :goto_0
    const/4 v1, 0x2

    if-gt p1, v1, :cond_4

    .line 11
    new-instance v2, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    .line 12
    invoke-direct {v2, v3, v4}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f100128

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->Q(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {v2}, Landroidx/preference/Preference;->J()V

    .line 15
    invoke-virtual {p0}, Landroidx/preference/b;->y()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->W(Landroidx/preference/Preference;)V

    .line 16
    new-instance v3, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    new-array v4, v0, [Ljava/lang/Object;

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, p2

    const-string v5, "MemoryCards/Slot%d_Enable"

    invoke-static {v5, v4}, Lxyz/aethersx2/android/FileHelper;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->K(Ljava/lang/String;)V

    if-gt p1, v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, p2

    .line 18
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 19
    iput-object v1, v3, Landroidx/preference/Preference;->x:Ljava/lang/Object;

    const v1, 0x7f100132

    .line 20
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->P(I)V

    const v1, 0x7f100133

    .line 21
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->M(I)V

    .line 22
    invoke-virtual {v3}, Landroidx/preference/Preference;->J()V

    .line 23
    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->W(Landroidx/preference/Preference;)V

    .line 24
    sget-object v1, Lxyz/aethersx2/android/j$c;->k0:[Lxyz/aethersx2/android/MemoryCardNamePreference;

    add-int/lit8 v3, p1, -0x1

    new-instance v4, Lxyz/aethersx2/android/MemoryCardNamePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lxyz/aethersx2/android/MemoryCardNamePreference;-><init>(Landroid/content/Context;)V

    aput-object v4, v1, v3

    .line 25
    aget-object v4, v1, v3

    const v5, 0x7f10013a

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->P(I)V

    .line 26
    aget-object v4, v1, v3

    invoke-virtual {v4, p1}, Lxyz/aethersx2/android/MemoryCardNamePreference;->Z(I)V

    .line 27
    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->W(Landroidx/preference/Preference;)V

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method
