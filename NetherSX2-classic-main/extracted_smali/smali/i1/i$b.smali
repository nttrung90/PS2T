.class public final Li1/i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Ljava/lang/String;

.field public c:Li1/p;

.field public d:Li1/a0;

.field public e:Li1/i;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Li1/i;Li1/a0;Li1/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li1/i$b;->a:Landroid/view/View;

    .line 3
    iput-object p2, p0, Li1/i$b;->b:Ljava/lang/String;

    .line 4
    iput-object p5, p0, Li1/i$b;->c:Li1/p;

    .line 5
    iput-object p4, p0, Li1/i$b;->d:Li1/a0;

    .line 6
    iput-object p3, p0, Li1/i$b;->e:Li1/i;

    return-void
.end method
