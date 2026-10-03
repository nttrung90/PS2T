.class public final Lw2/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/f$c<",
        "Lw2/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic c:Lw2/e$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw2/e$a;

    invoke-direct {v0}, Lw2/e$a;-><init>()V

    sput-object v0, Lw2/e$a;->c:Lw2/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
