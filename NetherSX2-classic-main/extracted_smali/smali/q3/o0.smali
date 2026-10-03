.class public final synthetic Lq3/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic c:Lq3/k0$c;

.field public final synthetic d:Landroid/app/Activity;

.field public final synthetic e:I

.field public final synthetic f:Ln1/c;


# direct methods
.method public synthetic constructor <init>(Lq3/k0$c;Landroid/app/Activity;ILn1/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/o0;->c:Lq3/k0$c;

    iput-object p2, p0, Lq3/o0;->d:Landroid/app/Activity;

    iput p3, p0, Lq3/o0;->e:I

    iput-object p4, p0, Lq3/o0;->f:Ln1/c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lq3/o0;->c:Lq3/k0$c;

    iget-object p2, p0, Lq3/o0;->d:Landroid/app/Activity;

    iget v0, p0, Lq3/o0;->e:I

    iget-object v1, p0, Lq3/o0;->f:Ln1/c;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lq3/t0;

    invoke-direct {v2, p1, p2, v0, v1}, Lq3/t0;-><init>(Lq3/k0$c;Landroid/app/Activity;ILn1/c;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
