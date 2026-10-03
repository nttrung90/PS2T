.class public final synthetic Lq3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lq3/f;->c:I

    iput-object p1, p0, Lq3/f;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget v0, p0, Lq3/f;->c:I

    const/4 v1, 0x1

    const-string v2, "Failed to start ACTION_OPEN_DOCUMENT_TREE intent."

    const/16 v3, 0x40

    const-string v4, "android.intent.extra.LOCAL_ONLY"

    const-string v5, "android.intent.action.OPEN_DOCUMENT_TREE"

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    iget-object p1, p0, Lq3/f;->d:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/RectPreference$b;

    sget v0, Lxyz/aethersx2/android/RectPreference$b;->t0:I

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/m;->dismiss()V

    return-void

    .line 2
    :pswitch_1
    iget-object p1, p0, Lq3/f;->d:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/LeaderboardListFragment;

    .line 3
    iget-object v0, p1, Lxyz/aethersx2/android/LeaderboardListFragment;->s0:Lr3/c;

    iget-object v0, v0, Lr3/c;->f:Landroid/view/View;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object v0

    iget-object v2, p1, Lxyz/aethersx2/android/LeaderboardListFragment;->t0:Lxyz/aethersx2/android/LeaderboardListFragment$d;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v8

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/m;->dismiss()V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lxyz/aethersx2/android/LeaderboardListFragment;->z()V

    :goto_1
    return-void

    .line 6
    :pswitch_2
    iget-object p1, p0, Lq3/f;->d:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/IntSpinBoxPreference;

    .line 7
    iget-object v0, p1, Lxyz/aethersx2/android/IntSpinBoxPreference;->Y:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget v0, p1, Lxyz/aethersx2/android/IntSpinBoxPreference;->U:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lxyz/aethersx2/android/IntSpinBoxPreference;->b0:Ljava/lang/Integer;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->E(I)Z

    goto :goto_2

    .line 10
    :cond_2
    iput-object v6, p1, Lxyz/aethersx2/android/IntSpinBoxPreference;->b0:Ljava/lang/Integer;

    .line 11
    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->F(Ljava/lang/String;)Z

    .line 12
    :goto_2
    invoke-virtual {p1}, Lxyz/aethersx2/android/IntSpinBoxPreference;->W()V

    return-void

    .line 13
    :pswitch_3
    iget-object p1, p0, Lq3/f;->d:Ljava/lang/Object;

    check-cast p1, Lq3/v1;

    sget v0, Lq3/v1;->e0:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 17
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18
    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/n;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 19
    :catch_0
    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_3
    return-void

    .line 20
    :pswitch_4
    iget-object p1, p0, Lq3/f;->d:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/EmulationActivity;

    sget v0, Lxyz/aethersx2/android/EmulationActivity;->N:I

    .line 21
    invoke-virtual {p1}, Lxyz/aethersx2/android/EmulationActivity;->K()V

    .line 22
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "*/*"

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.OPENABLE"

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f10017d

    .line 25
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 26
    :pswitch_5
    iget-object p1, p0, Lq3/f;->d:Ljava/lang/Object;

    check-cast p1, Lq3/d1;

    .line 27
    iget-object p1, p1, Lq3/d1;->c0:Lxyz/aethersx2/android/MainActivity;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 31
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v3, 0x7

    .line 32
    :try_start_1
    invoke-virtual {p1, v0, v3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 33
    :catch_1
    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_4
    return-void

    .line 34
    :pswitch_6
    iget-object p1, p0, Lq3/f;->d:Ljava/lang/Object;

    check-cast p1, Lq3/y0;

    .line 35
    iget-object v0, p1, Lq3/y0;->s0:Lr3/c;

    iget-object v0, v0, Lr3/c;->g:Landroid/widget/TextView;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    array-length v3, v0

    move v4, v8

    :goto_5
    if-ge v4, v3, :cond_5

    aget-object v5, v0, v4

    .line 38
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_6

    :cond_3
    const-string v7, "${title}"

    .line 39
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "${filetitle}"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "${serial}"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 40
    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10008e

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 41
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 42
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 43
    invoke-virtual {p1}, Landroidx/fragment/app/n;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f10008f

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 44
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    .line 45
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_7
    if-nez v6, :cond_7

    goto :goto_8

    .line 46
    :cond_7
    invoke-virtual {p1}, Landroidx/fragment/app/n;->getActivity()Landroidx/fragment/app/o;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_8

    .line 47
    :cond_8
    iget-object v1, p1, Lq3/y0;->s0:Lr3/c;

    iget-object v1, v1, Lr3/c;->g:Landroid/widget/TextView;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 48
    iget-object v1, p1, Lq3/y0;->s0:Lr3/c;

    iget-object v1, v1, Lr3/c;->f:Landroid/view/View;

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 49
    new-instance v1, Lxyz/aethersx2/android/AndroidProgressCallback;

    invoke-direct {v1, v0}, Lxyz/aethersx2/android/AndroidProgressCallback;-><init>(Landroid/app/Activity;)V

    .line 50
    new-instance v2, Lq3/x0;

    invoke-direct {v2, p1, v6, v1, v0}, Lq3/x0;-><init>(Lq3/y0;[Ljava/lang/String;Lxyz/aethersx2/android/AndroidProgressCallback;Landroidx/fragment/app/o;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 51
    invoke-virtual {p1}, Landroidx/fragment/app/m;->dismiss()V

    :goto_8
    return-void

    .line 52
    :pswitch_7
    iget-object p1, p0, Lq3/f;->d:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/CreateMemoryCardActivity;

    .line 53
    iget-object v0, p1, Lxyz/aethersx2/android/CreateMemoryCardActivity;->w:Lr3/a;

    iget-object v0, v0, Lr3/a;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_c

    iget v2, p1, Lxyz/aethersx2/android/CreateMemoryCardActivity;->y:I

    if-ltz v2, :cond_c

    iget v2, p1, Lxyz/aethersx2/android/CreateMemoryCardActivity;->z:I

    if-gez v2, :cond_9

    goto :goto_9

    .line 55
    :cond_9
    invoke-static {v0}, Lxyz/aethersx2/android/NativeLibrary;->getMemoryCardInfo(Ljava/lang/String;)Lxyz/aethersx2/android/MemoryCardInfo;

    move-result-object v2

    if-eqz v2, :cond_a

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v0, v2, v8

    const-string v0, "A memory card named \'%s\' already exists."

    .line 56
    invoke-static {v0, v2}, Lxyz/aethersx2/android/FileHelper;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_9

    .line 59
    :cond_a
    iget v2, p1, Lxyz/aethersx2/android/CreateMemoryCardActivity;->y:I

    iget v3, p1, Lxyz/aethersx2/android/CreateMemoryCardActivity;->z:I

    invoke-static {v0, v2, v3}, Lxyz/aethersx2/android/NativeLibrary;->createMemoryCard(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_9

    :cond_b
    new-array v2, v1, [Ljava/lang/Object;

    aput-object v0, v2, v8

    const-string v0, "Memory card \'%s\' created."

    .line 60
    invoke-static {v0, v2}, Lxyz/aethersx2/android/FileHelper;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 61
    invoke-virtual {p1, v7}, Landroid/app/Activity;->setResult(I)V

    .line 62
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_c
    :goto_9
    return-void

    .line 63
    :pswitch_8
    iget-object p1, p0, Lq3/f;->d:Ljava/lang/Object;

    check-cast p1, Lq3/t;

    sget v0, Lq3/t;->m:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f10004f

    .line 65
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lq3/r;

    invoke-direct {v2, p1, v1}, Lq3/r;-><init>(Lq3/t;I)V

    const p1, 0x7f030002

    .line 66
    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget-object v0, Lq3/k;->f:Lq3/k;

    const v1, 0x7f100084

    .line 67
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 70
    :pswitch_9
    iget-object v0, p0, Lq3/f;->d:Ljava/lang/Object;

    check-cast v0, Lq3/i;

    .line 71
    iget-object v1, v0, Lq3/i;->s0:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v1, :cond_d

    .line 72
    invoke-virtual {v0}, Landroidx/fragment/app/m;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 73
    :cond_d
    iget-object v1, v0, Lq3/i;->t0:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_e

    .line 74
    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 75
    :cond_e
    invoke-virtual {v0}, Landroidx/fragment/app/m;->dismiss()V

    return-void

    .line 76
    :pswitch_a
    iget-object p1, p0, Lq3/f;->d:Ljava/lang/Object;

    check-cast p1, Lq3/g$a;

    .line 77
    invoke-virtual {p1}, Landroidx/fragment/app/n;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090286

    .line 78
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901d3

    .line 79
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_10

    .line 80
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_10

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_f

    goto :goto_a

    .line 81
    :cond_f
    invoke-virtual {p1, v8}, Lq3/g$a;->z(Z)V

    const v3, 0x7f090107

    .line 82
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    new-instance v0, Lq3/g$a$a;

    invoke-direct {v0, p1, v1, v2}, Lq3/g$a$a;-><init>(Lq3/g$a;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v8, [Ljava/lang/Void;

    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_10
    :goto_a
    return-void

    .line 84
    :goto_b
    iget-object p1, p0, Lq3/f;->d:Ljava/lang/Object;

    check-cast p1, Lxyz/aethersx2/android/SetupWizardActivity;

    .line 85
    iget-object v0, p1, Lxyz/aethersx2/android/SetupWizardActivity;->z:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    add-int/2addr v1, v7

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 86
    invoke-virtual {p1}, Lxyz/aethersx2/android/SetupWizardActivity;->A()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
