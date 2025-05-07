function Card({ name }: { name: string }) {
  return (
    <section>
      <h1>Je suis le composant : `Card` dont le nom est {name}</h1>
    </section>
  );
}

export default Card;
