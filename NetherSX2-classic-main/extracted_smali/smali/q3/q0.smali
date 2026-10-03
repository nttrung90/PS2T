.class public final synthetic Lq3/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic c:Lq3/k0$c;

.field public final synthetic d:Landroid/app/Activity;

.field public final synthetic e:Lq3/k0$b;

.field public final synthetic f:Li0/c;

.field public final synthetic g:Lr0/a;

.field public final synthetic h:Landroid/net/Uri;

.field public final synthetic i:I

.field public final synthetic j:Ln1/c;


# direct methods
.method public synthetic constructor <init>(Lq3/k0$c;Landroid/app/Activity;Lq3/k0$b;Li0/c;Lr0/a;Landroid/net/Uri;ILn1/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/q0;->c:Lq3/k0$c;

    iput-object p2, p0, Lq3/q0;->d:Landroid/app/Activity;

    iput-object p3, p0, Lq3/q0;->e:Lq3/k0$b;

    iput-object p4, p0, Lq3/q0;->f:Li0/c;

    iput-object p5, p0, Lq3/q0;->g:Lr0/a;

    iput-object p6, p0, Lq3/q0;->h:Landroid/net/Uri;

    iput p7, p0, Lq3/q0;->i:I

    iput-object p8, p0, Lq3/q0;->j:Ln1/c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    iget-object v1, p0, Lq3/q0;->c:Lq3/k0$c;

    iget-object v2, p0, Lq3/q0;->d:Landroid/app/Activity;

    iget-object v3, p0, Lq3/q0;->e:Lq3/k0$b;

    iget-object v4, p0, Lq3/q0;->f:Li0/c;

    iget-object v5, p0, Lq3/q0;->g:Lr0/a;

    iget-object v6, p0, Lq3/q0;->h:Landroid/net/Uri;

    iget v7, p0, Lq3/q0;->i:I

    iget-object v8, p0, Lq3/q0;->j:Ln1/c;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lq3/m0;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lq3/m0;-><init>(Lq3/k0$c;Landroid/app/Activity;Lq3/k0$b;Li0/c;Lr0/a;Landroid/net/Uri;ILn1/c;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
