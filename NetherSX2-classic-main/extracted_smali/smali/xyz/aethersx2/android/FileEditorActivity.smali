.class public Lxyz/aethersx2/android/FileEditorActivity;
.super Lq3/p;
.source "SourceFile"


# static fields
.field public static final synthetic B:I


# instance fields
.field public A:Landroid/widget/EditText;

.field public z:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lq3/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lxyz/aethersx2/android/FileEditorActivity;->z:Landroid/net/Uri;

    const-string v2, "wt"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lxyz/aethersx2/android/FileEditorActivity;->A:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const v0, 0x7f1000b1

    const/4 v1, 0x1

    .line 5
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    const/4 v0, -0x1

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onBackPressed()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/appcompat/app/d$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100088

    .line 2
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/d$a;->j(I)Landroidx/appcompat/app/d$a;

    const v1, 0x7f1000af

    .line 3
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/d$a;->c(I)Landroidx/appcompat/app/d$a;

    .line 4
    new-instance v1, Lq3/d;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lq3/d;-><init>(Ljava/lang/Object;I)V

    const v2, 0x7f10008b

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/d$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    .line 5
    new-instance v1, Lq3/j;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lq3/j;-><init>(Ljava/lang/Object;I)V

    const v2, 0x7f100087

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/d$a;->e(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    .line 6
    sget-object v1, Lq3/k;->i:Lq3/k;

    const v2, 0x7f100084

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/d$a;->f(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    .line 7
    invoke-virtual {v0}, Landroidx/appcompat/app/d$a;->a()Landroidx/appcompat/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 p1, 0x0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/o;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001e

    .line 2
    invoke-virtual {p0, p1}, Le/e;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Le/e;->y()Le/a;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Le/a;->m(Z)V

    :cond_0
    const p1, 0x7f09025a

    .line 5
    invoke-virtual {p0, p1}, Le/e;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lxyz/aethersx2/android/FileEditorActivity;->A:Landroid/widget/EditText;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lxyz/aethersx2/android/FileEditorActivity;->z:Landroid/net/Uri;

    if-eqz p1, :cond_3

    .line 7
    invoke-static {p0, p1}, Lxyz/aethersx2/android/FileHelper;->getDocumentNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lxyz/aethersx2/android/FileEditorActivity;->z:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 10
    :goto_0
    iget-object p1, p0, Lxyz/aethersx2/android/FileEditorActivity;->z:Landroid/net/Uri;

    const/high16 v0, 0x100000

    invoke-static {p0, p1, v0}, Lxyz/aethersx2/android/FileHelper;->readBytesFromUri(Landroid/content/Context;Landroid/net/Uri;I)[B

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    iget-object v0, p0, Lxyz/aethersx2/android/FileEditorActivity;->A:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 12
    :cond_2
    iget-object p1, p0, Lxyz/aethersx2/android/FileEditorActivity;->A:Landroid/widget/EditText;

    const v0, 0x7f1000b0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Le/e;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f0901f6

    if-eq v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lxyz/aethersx2/android/FileEditorActivity;->A()V

    return v2

    .line 4
    :cond_1
    invoke-virtual {p0}, Lxyz/aethersx2/android/FileEditorActivity;->onBackPressed()V

    return v2
.end method
