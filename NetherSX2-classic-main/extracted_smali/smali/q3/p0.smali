.class public final synthetic Lq3/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic c:Lq3/k0$c;

.field public final synthetic d:Landroid/app/Activity;

.field public final synthetic e:Landroid/net/Uri;

.field public final synthetic f:I

.field public final synthetic g:Ln1/c;


# direct methods
.method public synthetic constructor <init>(Lq3/k0$c;Landroid/app/Activity;Landroid/net/Uri;ILn1/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/p0;->c:Lq3/k0$c;

    iput-object p2, p0, Lq3/p0;->d:Landroid/app/Activity;

    iput-object p3, p0, Lq3/p0;->e:Landroid/net/Uri;

    iput p4, p0, Lq3/p0;->f:I

    iput-object p5, p0, Lq3/p0;->g:Ln1/c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v1, p0, Lq3/p0;->c:Lq3/k0$c;

    iget-object v2, p0, Lq3/p0;->d:Landroid/app/Activity;

    iget-object v3, p0, Lq3/p0;->e:Landroid/net/Uri;

    iget v4, p0, Lq3/p0;->f:I

    iget-object v5, p0, Lq3/p0;->g:Ln1/c;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lq3/u0;

    const/4 v6, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lq3/u0;-><init>(Lq3/k0$c;Landroid/app/Activity;Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
